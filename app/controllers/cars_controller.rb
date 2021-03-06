class CarsController < ApplicationController

  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    car = Car.new(car_params)
    car.owner = Owner.find_or_create_by(name: params["owner_name"])
    car.brand = Brand.find_or_create_by(name: params["brand_name"])
    car.save
    redirect_to car_path(car)
  end

  def edit
  end

  def update
    old_owner = @car.owner
    old_brand = @car.brand
    @car.update(car_params)
    @car.owner = Owner.find_or_create_by(name: params["owner_name"])
    @car.brand = Brand.find_or_create_by(name: params["brand_name"])
    @car.save
    old_owner.destroy if old_owner.cars.length == 0
    old_brand.destroy if old_brand.cars.length == 0
    redirect_to car_path(@car)
  end

  def destroy
    @car.destroy
    @car.owner.destroy if @car.owner.cars.length == 0
    @car.brand.destroy if @car.brand.cars.length == 0
    redirect_to cars_path
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:model, :mechanic_id, :owner_id)
  end

end
