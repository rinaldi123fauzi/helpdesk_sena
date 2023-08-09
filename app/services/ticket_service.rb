class TicketService  < ApplicationService
  attr_accessor :sub_layanan, :approval_by, :current_user, :getRole

  def initialize(sub_layanan, approval_by, current_user, getRole)
    @getRole = getRole
    @current_user = current_user
    @sub_layanan = sub_layanan
    @approval_by = approval_by
  end

  def call
    if @getRole.include? "kepala divisi"
      check_user = Position.left_outer_joins(:user,:role).where(['users.username = ? and roles.name = ?', @current_user, ENV["DIVISI_DIATAS_IT"]])
      @check_approval = SubCategory.where('id = ? and approval_berjenjang != ?', @sub_layanan, 'none')
      if check_user.count == 1 # untuk role Engineering
        if @check_approval.first.approval_berjenjang == "none"
          @status = "open"
        else
          check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
          @status = "approval3"
          @approval_by = check_manajer_it.username
        end
      else # untuk role selain Engineering
        if @check_approval.count == 1
          if @check_approval.first.approval_berjenjang == "low"
            check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
            @status = "approval3"
            @approval_by = check_manajer_it.username
          elsif @check_approval.first.approval_berjenjang == "medium"
            check_kadiv = Position.left_outer_joins(:work_unit,:user).where('work_units.nama = ?', ENV["DIVISI_DIATAS_IT"]).select('users.username').first
            @status = "approval2"
            @approval_by = check_kadiv.username
          end
        else
          @status = "open"
        end
      end
    elsif @getRole.include? "user" # untuk users
      @check_approval = SubCategory.where('id = ? and approval_berjenjang != ?', @sub_layanan, 'none')
      if @check_approval.count == 1
        @status = "created"
      else
        @status = "open"
      end
      @approval_by = @approval_by
    else
      @status = "open"
    end

    return @status, @approval_by
  end
end 