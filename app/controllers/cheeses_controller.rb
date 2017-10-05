class CheesesController < ApplicationController
  def index
    @cheeses = Cheese.all
  end

  def new
  end

  def create
    @cheese = Cheese.new(cheese_params)
    @cheese.save
    redirect_to @cheese
  end

  def show
    @cheese = Cheese.find(params[:id])
  end

  def edit
    @cheese = Cheese.find(params[:id])
  end

  def update
    @cheese = Cheese.find(params[:id])
    @cheese.update(cheese_params)
    redirect_to @cheese
  end

  def destroy
    cheese = Cheese.find(params[:id])
    cheese.destroy
    redirect_to cheeses_path
  end

  private

  def cheese_params
    params.require(:cheese).permit(:name, :milk_type, :image_url, :description)
  end
end
