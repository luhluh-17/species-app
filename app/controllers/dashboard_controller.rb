class DashboardController < ApplicationController
  def index
    @request = Gbif::Species.all[:data]
    @species = @request['results']
  end

  def show
    @request = Gbif::Species.show(params[:id])
  end
end
