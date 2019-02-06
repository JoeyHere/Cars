class MechanicsController < ApplicationController

  before_action :set_mechanic, only: [:show, :edit, :update, :delete]

  def index
    @mechanics = Mechanic.all
  end

  def show
  end


  private

  def set_mechanic
    @mechanic = Mechanic.find(params[:id])
  end


end
