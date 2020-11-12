class DosesController < ApplicationController

  def new
    set_cocktail
    @dose = Dose.new
  end

  def create
    set_cocktail
    @dose = Dose.new(params_dose)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def params_dose
    params.require(:dose).permit(:description, :ingredient_id)
    # on aurait aussi pu mettre dans la methode create
    # @ingredient = Ingredient.find(params[:ingredient_id])
    # @dose.ingredient = @ingredient
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

end
