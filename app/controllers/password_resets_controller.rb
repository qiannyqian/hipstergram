class PasswordResetsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(reset_password_params)

    if user
      user.update(password_reset_token: password_reset_token, password_reset_at: DateTime.now)
      PasswordResetsMailer.password_reset_mail(user).deliver_now
      flash[:success] = "We've sent you instructions on how to reset your password"
    else
      flash[:danger] = "User does not exist"
    end

    redirect_to new_password_reset_path
  end

  private

  def reset_password_params
    params.require(:reset).permit(:email)
  end

  def user_params
    params.require(:user).permit(:password)
  end

  def password_reset_token
    SecureRandom.urlsafe_base64
  end


end
