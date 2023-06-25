class Transaksi::ApprovalController < ApplicationController 
  before_action :checkRole

  def approval
    check_ticket = Ticket.find_by_id(params[:id])

    if check_ticket.status == "created"
      
      check_ticket = Ticket.find_by_id(params[:id])
      positions = Position.where(work_unit_id: check_ticket.work_unit_id)
      position = positions.first

      if position.punya_pm == true
        Approval.create!(
          :issued_by => current_user.username,
          :approve_level => 'approval1',
          :description => 'tiket disetujui',
          :ticket_id => params[:id],
        )
        data = Ticket.find_by_id(params[:id])
        data.status = 'approval1'
        data.approval_by =  position.user.username
        data.save
    
        if data.save
          render json:{
            status: 200
          }
          flash[:notice] = "Data berhasil disimpan"
        end
      else
        if check_ticket.sub_category.approval_berjenjang == "low"
          checkRole = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
          approval_by = checkRole.username
        elsif check_ticket.sub_category.approval_berjenjang == "medium"
          checkRole = Position.left_outer_joins(:work_unit,:user).where('work_units.nama = ?', 'Engineering').select('users.username')
          approval_by = checkRole.username
        end
        Approval.create!(
          :issued_by => current_user.username,
          :approve_level => 'approval1',
          :description => 'tiket disetujui',
          :ticket_id => params[:id],
        )
        data = Ticket.find_by_id(params[:id])
        data.status = 'approval1'
        data.approval_by =  approval_by
        data.save
    
        if data.save
          render json:{
            status: 200
          }
          flash[:notice] = "Data berhasil disimpan"
        end
      end

    elsif check_ticket.status == "approval1"
      check_ticket = Ticket.find_by_id(params[:id])
      positions = Position.where(work_unit_id: check_ticket.work_unit_id)
      position = positions.first

      if position.punya_pm == true
        checkRole = Position.left_outer_joins(:work_unit,:user).where('work_units.nama = ?', 'Engineering').select('users.username').first
        approval_by = checkRole.username
        Approval.create!(
          :issued_by => current_user.username,
          :approve_level => 'approval2',
          :description => 'tiket disetujui',
          :ticket_id => params[:id],
        )
        data = Ticket.find_by_id(params[:id])
        data.status = "approval2"
        data.approval_by = approval_by
        data.save
    
        if data.save
          render json:{
            status: 200
          }
          flash[:notice] = "Data berhasil disimpan"
        end
      else
        check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
        if check_ticket.sub_category.approval_berjenjang == "low"
          @status = "open"
        elsif check_ticket.sub_category.approval_berjenjang == "medium"
          @status = "approval2"
        end
        Approval.create!(
          :issued_by => current_user.username,
          :approve_level => 'approval2',
          :description => 'tiket disetujui',
          :ticket_id => params[:id],
        )
        data = Ticket.find_by_id(params[:id])
        data.status = @status
        data.approval_by = check_manajer_it.username
        data.save
    
        if data.save
          render json:{
            status: 200
          }
          flash[:notice] = "Data berhasil disimpan"
        end
      end
    elsif check_ticket.status == "approval2"
      check_ticket = Ticket.find_by_id(params[:id])
      positions = Position.where(work_unit_id: check_ticket.work_unit_id)
      position = positions.first

      if position.punya_pm == true
        check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
        Approval.create!(
          :issued_by => current_user.username,
          :approve_level => 'approval3',
          :description => 'tiket disetujui',
          :ticket_id => params[:id],
        )
        data = Ticket.find_by_id(params[:id])
        data.status = 'approval3'
        data.approval_by = check_manajer_it.username
        if data.save!
          render json:{
            status: 200
          }
          flash[:notice] = "Data berhasil disimpan"
        end
      else
        if check_ticket.sub_category.approval_berjenjang == "low"
          @status = "approval2"
        elsif check_ticket.sub_category.approval_berjenjang == "medium"
          @status = "approval3"
        end
        Approval.create!(
          :issued_by => current_user.username,
          :approve_level => @status,
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
    elsif check_ticket.status == "approval3"
      if check_ticket.sub_category.approval_berjenjang == "low"
        @status = "approval2"
      elsif check_ticket.sub_category.approval_berjenjang == "medium"
        @status = "approval3"
      end
      Approval.create!(
        :issued_by => current_user.username,
        :approve_level => @status,
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
  end

  def reject
    check_ticket = Ticket.find_by_id(params[:id])
    if check_ticket.status == "created" || check_ticket.status == "approval1"
      Approval.create!(
        :issued_by => current_user.username,
        :approve_level => 'rejected',
        :ticket_id => params[:id],
        :description => params[:deskripsi]
      )
      data = Ticket.find_by_id(params[:id])
      data.status = 'rejected'
      data.approval_by = current_user.username
  
      if data.save
        render json:{
          status: 200
        }
        flash[:notice] = "Data berhasil disimpan"
      end
    end
  end

  private

  def checkRole
    unless getRole == "manajer it" || getRole == "kepala divisi"
      render json:{
        status: 401,
        msg: "Unauthorized"
      }
    end
  end
end
