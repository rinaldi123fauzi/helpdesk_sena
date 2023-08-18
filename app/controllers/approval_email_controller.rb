class ApprovalEmailController < ApplicationController 
  skip_before_action :authenticate_user!
  layout 'approval'

  def approved
  end

  def rejected
  end

  def reject
    @ticket_id = params[:ticket_id]
    @username = params[:username]
    @token = params[:token]
  end

  def sendReject
    begin
      checkToken = User.where(username: params[:username], token: params[:token])
      if checkToken.count == 1 and params[:token].length > 1
        tickets = Ticket.where(id: params[:id], token: params[:token])
        check_ticket = tickets.first
        if tickets.count == 1
          unless check_ticket.status == "open"
            if params[:deskripsi].length != 0
              Approval.create!(
                :issued_by => params[:username],
                :approve_level => 'rejected',
                :ticket_id => params[:id],
                :description => params[:deskripsi]
              )
              data = Ticket.find_by_id(params[:id])
              data.status = 'rejected'
              data.approval_by = params[:username]
              data.save
              render json:{
                status: 200
              }
              flash[:notice] = "Data berhasil disimpan"
            else
              render json:{
                status: 204,
                msg: "Deskripsi wajib diisi"
              }
            end
          end
        else
          render json:{
            status: 204,
            msg: "Data tiket tidak ditemukan"
          }
        end
      else
        render json:{
          status: 204,
          msg: "Not Authorized"
        }
      end
    rescue StandardError => e
      txError(e)
    end
  end

  def approval
    begin
      @token = rand(1111..9999)
      tickets = Ticket.where(id: params[:ticket_id], token: params[:token])
      check_ticket = tickets.first
      checkToken = User.where(username: params[:username], token: params[:token])
      if tickets.count == 1
        if checkToken.count == 1 and params[:token].length > 1
          if check_ticket.status == "created"
          
            check_ticket = Ticket.find_by_id(params[:ticket_id])
            positions = Position.left_outer_joins(:user).where('users.username = ?', check_ticket.approval_by)
            position = positions.first
    
            # ini untuk pengajuan ticket langsung ke manajer it / kepala divisi engineering
            positionsIt = RoleAssignment.left_outer_joins(:role, :user).where('users.username = ?', check_ticket.approval_by)
            positionIt = positionsIt.first
            positionsKadivEngineering = Position.left_outer_joins(:user,:work_unit).where('users.username = ? and work_units.nama = ?', check_ticket.approval_by, ENV["DIVISI_DIATAS_IT"])
            ### END ###
    
            # jika approval yang dituju manajer it
            if positionIt.role.name == "manajer it" 
              Approval.create!(
                :issued_by => params[:username],
                :approve_level => 'open',
                :description => 'tiket disetujui',
                :ticket_id => params[:ticket_id],
              )
              data = Ticket.find_by_id(params[:ticket_id])
              data.status = 'open'
              data.save
          
              if data.save
                redirect_to '/approval_email/approved'
              end
            else 
              # jika tidak maka akan dicek apakah approval yang dituju kadiv engineering
              if positionsKadivEngineering.count == 1
                checkRole = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
                approval_by = checkRole.username
                status = "approval3"
                Approval.create!(
                  :issued_by => params[:username],
                  :approve_level => 'approval2',
                  :description => 'tiket disetujui',
                  :ticket_id => params[:ticket_id],
                )
                data = Ticket.find_by_id(params[:ticket_id])
                data.status = status
                data.approval_by =  approval_by
                data.token = @token
                data.save
  
                users = User.where(username: data.approval_by)
                if users.count == 1
                  user = users.first
                  user.token = @token
                  user.save
                  UserMailer.approval_confirmation(user.email,data,user.token).deliver_now
                end
            
                if data.save
                  redirect_to '/approval_email/approved'
                end
              else
                # jika tidak maka akan dicek apakah approval yang dituju projek manajer
                if positions.count == 0
                  kadiv = Position.find_by_work_unit_id(check_ticket.work_unit_id)
                  Approval.create!(
                    :issued_by => params[:username],
                    :approve_level => 'approval1',
                    :description => 'tiket disetujui',
                    :ticket_id => params[:ticket_id],
                  )
                  data = Ticket.find_by_id(params[:ticket_id])
                  data.status = 'approval1'
                  data.approval_by =  kadiv.user.username
                  data.token = @token
                  data.save
  
                  users = User.where(username: data.approval_by)
                  if users.count == 1
                    user = users.first
                    user.token = @token
                    user.save
                    UserMailer.approval_confirmation(user.email,data,user.token).deliver_now
                  end
              
                  if data.save
                    redirect_to '/approval_email/approved'
                  end
                # jika tidak maka approval yang dituju kadiv masing - masing satuan kerja
                else 
                  if check_ticket.sub_category.approval_berjenjang == "low"
                    checkRole = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
                    approval_by = checkRole.username
                    status = "approval3"
                  elsif check_ticket.sub_category.approval_berjenjang == "medium"
                    checkRole = Position.left_outer_joins(:work_unit,:user).where('work_units.nama = ?', ENV["DIVISI_DIATAS_IT"]).select('users.username').first
                    approval_by = checkRole.username
                    status = "approval2"
                  end
                  Approval.create!(
                    :issued_by => params[:username],
                    :approve_level => status,
                    :description => 'tiket disetujui',
                    :ticket_id => params[:ticket_id],
                  )
                  data = Ticket.find_by_id(params[:ticket_id])
                  data.status = status
                  data.approval_by =  approval_by
                  data.token = @token
                  data.save
  
                  users = User.where(username: data.approval_by)
                  if users.count == 1
                    user = users.first
                    user.token = @token
                    user.save
                    UserMailer.approval_confirmation(user.email,data,user.token).deliver_now
                  end
              
                  if data.save
                    redirect_to '/approval_email/approved'
                  end
                end
              end
            end
    
          elsif check_ticket.status == "approval1"
            check_ticket = Ticket.find_by_id(params[:ticket_id])
            if check_ticket.work_unit.nama == ENV["DIVISI_DIATAS_IT"]
              check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
              approval_by = check_manajer_it.username
              status = "approval3"
            else
              if check_ticket.sub_category.approval_berjenjang == "low"
                check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
                approval_by = check_manajer_it.username
                status = "approval3"
              elsif check_ticket.sub_category.approval_berjenjang == "medium"
                checkRole = Position.left_outer_joins(:work_unit,:user).where('work_units.nama = ?', ENV["DIVISI_DIATAS_IT"]).select('users.username').first
                approval_by = checkRole.username
                status = "approval2"
              end
            end
    
            Approval.create!(
              :issued_by => params[:username],
              :approve_level => status,
              :description => 'tiket disetujui',
              :ticket_id => params[:ticket_id],
            )
            data = Ticket.find_by_id(params[:ticket_id])
            data.status = status
            data.approval_by = approval_by
            data.token = @token
            data.save
  
            users = User.where(username: data.approval_by)
            if users.count == 1
              user = users.first
              user.token = @token
              user.save
              UserMailer.approval_confirmation(user.email,data,user.token).deliver_now
            end
        
            if data.save
              redirect_to '/approval_email/approved'
            end
          elsif check_ticket.status == "approval2"
            check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
            approval_by = check_manajer_it.username
            status = "approval3"
            Approval.create!(
              :issued_by => params[:username],
              :approve_level => status,
              :description => 'tiket disetujui',
              :ticket_id => params[:ticket_id],
            )
            data = Ticket.find_by_id(params[:ticket_id])
            data.status = status
            data.approval_by = approval_by
            data.token = @token
            
            users = User.where(username: data.approval_by)
            if users.count == 1
              user = users.first
              user.token = @token
              user.save
              UserMailer.approval_confirmation(user.email,data,user.token).deliver_now
            end
            
            if data.save!
              redirect_to '/approval_email/approved'
            end
          elsif check_ticket.status == "approval3"
            Approval.create!(
              :issued_by => params[:username],
              :approve_level => "open",
              :description => 'tiket disetujui',
              :ticket_id => params[:ticket_id],
            )
            data = Ticket.find_by_id(params[:ticket_id])
            data.status = 'open'
            data.save
        
            if data.save
              redirect_to '/approval_email/approved'
            end
          end
        else
          render json:{
            status: 404
          }
        end
      else
        render json:{
          status: 404
        }
      end
    rescue StandardError => e
      txError(e)
    end
  end
end
