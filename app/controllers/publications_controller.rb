class PublicationsController < ApplicationController
  before_action :set_publication, only: %i[show edit update destroy]

  def index
    @publications = Publication.all
  end

  def show; end

  def new
    @publication = Publication.new
  end

  def edit; end

  def create
    @publication = Publication.new(publication_params)

    if @publication.save
      redirect_to @publication, notice: 'Publication was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @publication.update(publication_params)
      redirect_to @publication, notice: 'Publication was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @publication.destroy
    redirect_to publications_url, notice: 'Publication was successfully deleted.'
  end

  private

  def set_publication
    @publication = Publication.find(params[:id])
  end

  def publication_params
    params.permit(:title, :summary, :url, :publiction_date, :species_id, :user_id)
  end
end