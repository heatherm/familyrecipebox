class RecipesController < ApplicationController
  before_filter :require_login
  before_filter :set_s3_url, only: [:new, :edit]

  def index
    @recipes = Recipe.all.order(updated_at: :desc)
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.where(id: params[:id]).first
  end

  def edit
    @recipe = Recipe.where(id: params[:id]).first
  end

  def create
    @recipe = Recipe.new(recipe_params.merge(user: current_user))
    if @recipe.save
      redirect_to recipes_path, :notice => "Recipe Saved!"
    else
      render :new
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(recipe_params)
      redirect_to recipe_path(@recipe), :notice => "Recipe Updated!"
    else
      render :edit
    end
  end

  private

  def set_s3_url
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
  end

  def recipe_params
    params.require(:recipe).permit(:title, :source, :ingredients, :instructions, :url, :variations, :card_front_url)
  end
end