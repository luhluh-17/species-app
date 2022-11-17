class DashboardController < ApplicationController
  def index
    @request = Gbif::Species.all[:data]
    @species = @request['results']
  end
end
