class PlanesController < ApplicationController
  respond_to :json

  def index
    respond_with Plane.all
  end

  def show
    respond_with Plane.find(params[:id])
  end

  def create
    respond_with Plane.create(params[:plane])
  end

  def update
    respond_with Plane.update(params[:id], params[:plane])
  end

  def destroy
    respond_with Plane.destroy(params[:id])
  end
end
