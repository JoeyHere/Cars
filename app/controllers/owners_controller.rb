class OwnersController < ApplicationController

  before_action :set_owner, only: [:show, :edit, :update, :delete]

  def index
    @owners = Owner.all
  end

  def show
  end


  private

  def set_owner
    @owner = Owner.find(params[:id])
  end

end
