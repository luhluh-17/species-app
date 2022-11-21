class SpeciesController < ApplicationController
  before_action :set_species, only: %i[show edit update destroy]

  def index
    @species = Species.all
  end

  def show; end

  def new
    @species = Species.new
  end

  def edit; end

  def create
    @species = Species.new(species_params)

    if @species.save
      redirect_to @species, notice: "#{@species.name} was added in database"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @species.update(species_params)
      redirect_to @species, notice: "#{@species.name} has been updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @species.destroy
    redirect_to species_index_url, notice: "#{@species.name} has been deleted"
  end

  private

  def set_species
    @species = Species.find(params[:id])
  end

  def species_params
    params.require(:species).permit(:ephitet, :name, :kingdom, :phylum, :classification, :order, :family, :location,
                                    :description)
  end
end
