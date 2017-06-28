class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
  # Create the user from params
  @user = current_user
  # En el SCHEMA de la tabla USERS username,email
  devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email])    
  super
  if @user.save
    # Deliver the signup email
    UserNotifierMailer.send_signup_email(@user).deliver
    else
      return redirect_to root_path
  end
  end


      # MarketingMailer.onboarding_mailer(@user).deliver_now
      # ApplicationJob.perform_now(@user)
      # NewMovieMailer.perform_now(@user)
      # Marketing::OnboardingMailer.perform_now(@user)
      # Marketing::OnboardingMailer.set(wait: 1.minutes).perform.later(@user)   #perform_later(@user)
      # Marketing::OnboardingMailer.set(wait: 1.hour).perform_later(@user)
     
  # def create
  #   super
  #   @user = current_user
  #   UserNotifierMailer.send_signup_email(@user).deliver
  # end

  # def create
  #   # Create the user from params
  #   @user = User.new(params[:user])
  #   if @user.save
  #     # Deliver the signup email
  #     UserNotifier.send_signup_email(@user).deliver
  #     redirect_to(@user, :notice => 'User created')
  #   else
  #     render :action => 'new'
  #   end
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  #The path used after sign up.
  def after_sign_up_path_for(resource)
    #super(resource)
    settings_path
  end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end



end
  
