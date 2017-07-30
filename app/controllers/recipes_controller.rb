class RecipesController < ApplicationController
   before_action :find_recipe, only: [:show, :destroy, :edit, :update]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
     @recipe = Recipe.new(recipe_params)
     if @recipe.save
        redirect_to recipes_path
     else
        redirect_to new_recipes_path
     end
  end

  def show
     @recipe
  end

  def edit
     @recipe
  end

  def destroy
     @recipe.destroy
     redirect_to recipes_path
  end

  def update
     @recipe.update(recipe_params)
     redirect_to recipes_path
  end

  private

     def recipe_params
        params.require(:recipe).permit(:name, :cook_time, :prep_time)
     end

     def find_recipe
        @recipe = Recipe.find(params[:id])
     end
end
