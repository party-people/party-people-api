class Api::V1::UsersController < ApiController
  def create
    @user = User.create(user_params)
  rescue => ex
    logger.debug ex.message
    logger.debug ex.backtrace.join("\n")
    head :bad_request
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
