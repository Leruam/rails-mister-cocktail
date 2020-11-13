class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    set_cocktail
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params_cocktail)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def params_cocktail
    params.require(:cocktail).permit(:name, pictures: [])
    # on a change :picture à pictures: [] pour mettre plusieurs photos
  end

end
