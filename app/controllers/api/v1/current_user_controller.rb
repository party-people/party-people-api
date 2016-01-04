class Api::V1::CurrentUserController < ApiController
  def show
    @user = current_resource_owner
  end
end
