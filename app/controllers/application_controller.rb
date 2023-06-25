class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    update_attrs = [:password, :password_confirmation, :current_password]
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
  end

  def getRole
    @roleAssign = RoleAssignment.left_outer_joins(:role).where(user_id: current_user.id).select('roles.name AS nameroles, role_assignments.role_id')
    @value = @roleAssign.each_with_index.map { |role| "#{role.try(:nameroles)}" }.join(", ").gsub(",","")
    return @value
  end
end
