class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end
  
  def show
    @food = Food.find(params[:id])
  end
  
  def new
    @food = Food.new
  end
  
  def create
    @food = Food.new(params[:food])
    if @food.save
      flash[:notice] = "Successfully created food."
      redirect_to @food
    else
      render :action => 'new'
    end
  end
  
  def edit
    @food = Food.find(params[:id])
  end
  
  def update
    @food = Food.find(params[:id])
    if @food.update_attributes(params[:food])
      flash[:notice] = "Successfully updated food."
      redirect_to @food
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    flash[:notice] = "Successfully destroyed food."
    redirect_to foods_url
  end
end
