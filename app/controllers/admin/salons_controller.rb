class Admin::SalonsController < Admin::BaseController
  before_action :authorize_resource

  def index

  end

  private

  def authorize_resource
    authorize Salon
  end
end
