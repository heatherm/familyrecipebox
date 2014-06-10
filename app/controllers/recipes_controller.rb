class RecipesController < ApplicationController
  before_filter :require_login

  def index
    @recipes = Recipe.all.order(updated_at: :desc)
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.where(id: params[:id]).first
  end

  def create
    @recipe = Recipe.new(recipe_params.merge(user: current_user))
    if @recipe.save
      redirect_to recipes_path(@recipe), :notice => "Recipe Saved!"
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :source, :ingredients, :instructions, :url)
  end
end