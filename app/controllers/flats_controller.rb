class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :edit, :update, :destroy]

  # def index
  #   @flats = Flat.all
  #   @search = params[:search]

  #   if @search.present?
  #     @keyword = @search[:keyword]
  #     @flats = Flat.where(name: @keyword)
  #   end
  # end

  def index
    @flats = Flat.all
    @search = params["search"]
    if @search.present?
      @keyword = @search["keyword"]
      @flats = Flat.where("name LIKE '%#{@keyword}%'")
    end
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_param)
      if @flat.save
        redirect_to flats_path
      else
        render :new
      end
  end

  def show; end

  def edit
  end

  def update
    @flat.update(flat_param)
    redirect_to flats_path
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_param
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def find_flat
    @flat = Flat.find(params[:id])
  end

end
