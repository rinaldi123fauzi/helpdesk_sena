class Transaksi::ApproveController < ApplicationController 
  before_action :checkRole

  def approval
    begin
      check_ticket = Ticket.find_by_id(params[:id])

      if check_ticket.status == "created"
        
        check_ticket = Ticket.find_by_id(params[:id])
        positions = Position.left_outer_joins(:user).where('users.username = ?', check_ticket.approval_by)
        position = positions.first

        # ini untuk pengajuan ticket langsung ke manajer it / kepala divisi engineering
        positionsIt = RoleAssignment.left_outer_joins(:role, :user).where('users.username = ?', check_ticket.approval_by)
        positionIt = positionsIt.first
        positionsKadivEngineering = Position.left_outer_joins(:user,:work_unit).where('users.username = ? and work_units.nama = ?', check_ticket.approval_by, 'Engineering')
        ### END ###

        # jika approval yang dituju manajer it
        if positionIt.role.name == "manajer it" 
          Approval.create!(
            :issued_by => current_user.username,
            :approve_level => 'open',
            :description => 'tiket disetujui',
            :ticket_id => params[:id],
          )
          data = Ticket.find_by_id(params[:id])
          data.status = 'open'
          data.save
      
          if data.save
            render json:{
              status: 200
            }
            flash[:notice] = "Data berhasil disimpan"
          end
        else 
          # jika tidak maka akan dicek apakah approval yang dituju kadiv engineering
          if positionsKadivEngineering.count == 1
            checkRole = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
            approval_by = checkRole.username
            status = "approval3"
            Approval.create!(
              :issued_by => current_user.username,
              :approve_level => 'approval2',
              :description => 'tiket disetujui',
              :ticket_id => params[:id],
            )
            data = Ticket.find_by_id(params[:id])
            data.status = status
            data.approval_by =  approval_by
            data.save
        
            if data.save
              render json:{
                status: 200
              }
              flash[:notice] = "Data berhasil disimpan"
            end
          else
            # jika tidak maka akan dicek apakah approval yang dituju projek manajer
            if positions.count == 0
              kadiv = Position.find_by_work_unit_id(check_ticket.work_unit_id)
              Approval.create!(
                :issued_by => current_user.username,
                :approve_level => 'approval1',
                :description => 'tiket disetujui',
                :ticket_id => params[:id],
              )
              data = Ticket.find_by_id(params[:id])
              data.status = 'approval1'
              data.approval_by =  kadiv.user.username
              data.save
          
              if data.save
                render json:{
                  status: 200
                }
                flash[:notice] = "Data berhasil disimpan"
              end
            # jika tidak maka approval yang dituju kadiv masing - masing satuan kerja
            else 
              if check_ticket.sub_category.approval_berjenjang == "low"
                checkRole = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
                approval_by = checkRole.username
                status = "approval3"
              elsif check_ticket.sub_category.approval_berjenjang == "medium"
                checkRole = Position.left_outer_joins(:work_unit,:user).where('work_units.nama = ?', 'Engineering').select('users.username').first
                approval_by = checkRole.username
                status = "approval2"
              end
              Approval.create!(
                :issued_by => current_user.username,
                :approve_level => status,
                :description => 'tiket disetujui',
                :ticket_id => params[:id],
              )
              data = Ticket.find_by_id(params[:id])
              data.status = status
              data.approval_by =  approval_by
              data.save
          
              if data.save
                render json:{
                  status: 200
                }
                flash[:notice] = "Data berhasil disimpan"
              end
            end
          end
        end

      elsif check_ticket.status == "approval1"
        check_ticket = Ticket.find_by_id(params[:id])
        if check_ticket.work_unit.nama == "Engineering"
          check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
          approval_by = check_manajer_it.username
          status = "approval3"
        else
          if check_ticket.sub_category.approval_berjenjang == "low"
            check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
            approval_by = check_manajer_it.username
            status = "approval3"
          elsif check_ticket.sub_category.approval_berjenjang == "medium"
            checkRole = Position.left_outer_joins(:work_unit,:user).where('work_units.nama = ?', 'Engineering').select('users.username').first
            approval_by = checkRole.username
            status = "approval2"
          end
        end

        Approval.create!(
          :issued_by => current_user.username,
          :approve_level => status,
          :description => 'tiket disetujui',
          :ticket_id => params[:id],
        )
        data = Ticket.find_by_id(params[:id])
        data.status = status
        data.approval_by = approval_by
        data.save
    
        if data.save
          render json:{
            status: 200
          }
          flash[:notice] = "Data berhasil disimpan"
        end
      elsif check_ticket.status == "approval2"
        check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
        approval_by = check_manajer_it.username
        status = "approval3"
        Approval.create!(
          :issued_by => current_user.username,
          :approve_level => status,
          :description => 'tiket disetujui',
          :ticket_id => params[:id],
        )
        data = Ticket.find_by_id(params[:id])
        data.status = status
        data.approval_by = approval_by
        if data.save!
          render json:{
            status: 200
          }
          flash[:notice] = "Data berhasil disimpan"
        end
      elsif check_ticket.status == "approval3"
        Approval.create!(
          :issued_by => current_user.username,
          :approve_level => "open",
          :description => 'tiket disetujui',
          :ticket_id => params[:id],
        )
        data = Ticket.find_by_id(params[:id])
        data.status = 'open'
        data.save
    
        if data.save
          render json:{
            status: 200
          }
          flash[:notice] = "Data berhasil disimpan"
        end
      end
    rescue StandardError => e
      txError(e)
    end
  end

  def reject
    begin
      check_ticket = Ticket.find_by_id(params[:id])
      unless check_ticket.status == "open"
        if params[:deskripsi].length != 0
          Approval.create!(
            :issued_by => current_user.username,
            :approve_level => 'rejected',
            :ticket_id => params[:id],
            :description => params[:deskripsi]
          )
          data = Ticket.find_by_id(params[:id])
          data.status = 'rejected'
          data.approval_by = current_user.username
          data.save
          render json:{
            status: 200
          }
          flash[:notice] = "Data berhasil disimpan"
        else
          render json:{
            status: 204
          }
        end
      end
    rescue StandardError => e
      txError(e)
    end
  end

  private

  def checkRole
    unless current_user.can? { |permissions| permissions.approval.manage? } 
      render json:{
        status: 401,
        msg: "Unauthorized"
      }
    end
  end
end
