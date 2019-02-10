class Admin::SalonsController < Admin::BaseController
  before_action :set_salon, only: [:show, :edit, :update, :destroy]
  before_action :authorize_resource, only: [:index, :new, :create]
  before_action :set_page_title

  def index
    @q = Salon.ransack(params[:q])
    @salons = @q.result(distinct: true)
  end

  def new
    @salon = Salon.new
  end

  def create
    @salon = Salon.new(salon_params)
    if @salon.save
      redirect_to edit_admin_salon_path(@salon), notice: 'Successfully created new salon'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @salon.update(salon_params)
      redirect_to edit_admin_salon_path(@salon), notice: 'Update Salon success'
    else
      render :edit
    end
  end

  private

  def set_salon
    @salon = Salon.find(params[:id])

    authorize @salon
  end

  def authorize_resource
    authorize Salon
  end

  def set_page_title
    @title = 'Manage Salons'
  end

  def salon_params
    params.require(:salon).permit(:name, :desc, :phone_number, :address)
  end
end
