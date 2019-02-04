class Admin::BaseController < ApplicationController
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  after_action :verify_authorized

  private

  def user_not_authorized
    flash[:alert] = "you are not authorized to perform this action"
    redirect_to(request.referrer || root_path)
  end
end
