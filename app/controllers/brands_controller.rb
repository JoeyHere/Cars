class BrandsController < ApplicationController

  before_action :set_brand, only: [:show, :edit, :update, :delete]

  def index
    @brands = Brand.all
  end

  def show
  end


  private

  def set_brand
    @brand = Brand.find(params[:id])
  end

end
