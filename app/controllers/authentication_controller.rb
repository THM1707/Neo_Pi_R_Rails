class AuthenticationController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate
  # return auth token once user is authenticated
  def authenticate
    auth_token =
        AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
    user = User.find_by_email(auth_params[:email])
    user_info = {name: user.name, gender: user.gender}
    response = {message: Message.success_login, auth_token: auth_token, user: user_info}
    json_response(response)
  end

  private

  def auth_params
    params.permit(:email, :password)
  end
end