# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    @username = params[:user][:username]
    @password = params[:user][:password]

    if @username.match(/(@)/)
      @user = User.find_by_email(@username)
    else  
      @user = User.find_by_username(@username)
    end
    
    if @user && @user.valid_password?(@password)
      sign_in(@user)
      if current_user.roles.any? {|r| r.name == "kepala divisi" || r.name == "projek manajer"}
        redirect_to "/tickets"
      else
        redirect_to root_path
      end
    else
      reset_session
      flash[:alert] = "Username atau Password anda salah"
      redirect_to new_user_session_path
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  protected
  def after_sign_out_path_for(resource_or_scope)
    scope = Devise::Mapping.find_scope!(resource_or_scope)
    router_name = Devise.mappings[scope].router_name
    context = router_name ? send(router_name) : self
    "/users/sign_in"
    #context.respond_to?(:root_path) ? context.root_path : "/"
  end
  
end
