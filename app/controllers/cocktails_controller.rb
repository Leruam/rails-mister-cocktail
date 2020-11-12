class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    set_cocktails
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
  end

  private

  def set_restaurant
    @cocktail = Cocktail.find(params[:id])
  end

end
