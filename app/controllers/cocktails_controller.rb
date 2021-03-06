class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
  end

  def show
    @doses = Dose.all
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  # def new
  #   @cocktail = Cocktail.new
  # end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktail_url(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
