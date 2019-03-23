class Api::UsersController < Api::BaseController
  def me
    render json: {
      user: @current_user
    }
  end
end