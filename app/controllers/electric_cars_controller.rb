class ElectricCarsController < ApplicationController
  before_action :set_electric_car, only: %i[ show edit update destroy ]

  # GET /electric_cars or /electric_cars.json
  def index
    @electric_cars = ElectricCar.all
  end

  # GET /electric_cars/1 or /electric_cars/1.json
  def show
  end

  # GET /electric_cars/new
  def new
    @electric_car = ElectricCar.new
  end

  # GET /electric_cars/1/edit
  def edit
  end

  # POST /electric_cars or /electric_cars.json
  def create
    @electric_car = ElectricCar.new(electric_car_params)

    respond_to do |format|
      if @electric_car.save
        format.html { redirect_to electric_car_url(@electric_car), notice: "Electric car was successfully created." }
        format.json { render :show, status: :created, location: @electric_car }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @electric_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electric_cars/1 or /electric_cars/1.json
  def update
    respond_to do |format|
      if @electric_car.update(electric_car_params)
        format.html { redirect_to electric_car_url(@electric_car), notice: "Electric car was successfully updated." }
        format.json { render :show, status: :ok, location: @electric_car }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @electric_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electric_cars/1 or /electric_cars/1.json
  def destroy
    @electric_car.destroy

    respond_to do |format|
      format.html { redirect_to electric_cars_url, notice: "Electric car was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electric_car
      @electric_car = ElectricCar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def electric_car_params
      params.require(:electric_car).permit(:model, :brand, :features, :manufacture_year, :driving_range, :rental_price, :image)
    end
end
