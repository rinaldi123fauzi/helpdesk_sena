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

    ldap = Net::LDAP.new :host => '182.253.69.21',
      :port => 389,
      :auth => {
          :method => :simple,
          :username => "#{@username}",
          :password => "#{@password}"
      }
    if ldap.bind
      checkUser = User.where(email: @username)
      if checkUser.count == 1
        @user = checkUser.first
        @user.password = @password
        @user.save
        sign_in(@user)
        if current_user.roles.any? {|r| r.name == "kepala divisi" || r.name == "projek manajer"}
          redirect_to "/tickets"
        else
          redirect_to root_path
        end
      else
        splitEmail = @username.split('@')
        user = User.new
        user.username = splitEmail[0]
        user.email = @username
        user.password = @password
        user.role_ids = [4]
        user.state = true
        user.save
        sign_in(user)
        if current_user.roles.any? {|r| r.name == "kepala divisi" || r.name == "projek manajer"}
          redirect_to "/tickets"
        else
          redirect_to root_path
        end
      end
    else
      @user = User.where('username = ? or email = ?', @username, @username).first
      if @user.email.match(/(@pt-sena.co.id)/) #cek apakah user mengandung email SENA
        reset_session
        flash[:alert] = "Username atau Password anda salah"
        redirect_to new_user_session_path
      else # tidak, maka lanjut untuk validasi password
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
