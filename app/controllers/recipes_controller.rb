class RecipesController < ApplicationController

  def index
    @recipe = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def destroy
  end
end
