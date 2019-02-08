class Admin::SalonsController < Admin::BaseController
  before_action :set_salon, only: [:show, :edit, :update, :destroy]
  before_action :authorize_resource, only: [:index, :new, :create]
  before_action :set_page_title

  def index

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  private

  def authorize_resource
    authorize Salon
  end

  def set_page_title
    @title = 'Manage Salons'
  end
end
