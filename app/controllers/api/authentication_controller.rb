class Api::AuthenticationController < Api::BaseController
  skip_before_action :authenticate_request!
  protect_from_forgery except: :authenticate_user

  def authenticate_user
    user = User.find_for_database_authentication(email: params[:email])
    if user.valid_password?(params[:password])
      render json: payload(user)
    else
      render json: {
        errors: [
          'Invalid Username/password'
        ]
      }
    end
  end

  def payload(user)
    return nil unless user and user.id
    {
      auth_token: JsonWebToken.encode(
        {
          user_id: user.id,
          exp: (Time.now + 2.week).to_i
        }
      ),
      user: {
        id: user.id,
        email: user.email
      }
    }
  end

end
