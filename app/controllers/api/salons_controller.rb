class Api::SalonsController < Api::BaseController
  def index
    render json: Salon.all
  end
end
