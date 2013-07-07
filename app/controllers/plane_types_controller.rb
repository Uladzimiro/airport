class PlaneTypesController < ApplicationController
  respond_to :json

  def show
    respond_with PlaneType.find([params[:id]])
  end
end
