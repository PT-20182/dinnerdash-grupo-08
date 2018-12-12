class OrderMealsController < ApplicationController
  def index
  end

  def create
        @order      = current_order
        @order_meal = @order.order_meals.new
  end


  def show
  end

  def new
  end

  def edit
  end

  private 


end
