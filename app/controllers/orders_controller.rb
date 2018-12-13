class OrdersController < ApplicationController
  before_action :check_admin_status , only: [:edit, :destroy]
  before_action :check_user
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
      @orders = Order.all
  end

  def show
  end

  def new
      @order = Order.new
  end

  def create

      sum = 0
      session[:cart].each do |item|
            sum += Meal.find(item["id"]).price * item["qtd"].to_i
      end

      @order = Order.new(situation_id:1 , user_id:current_user.id, price:sum)

      @order.save!



      session[:cart].each do |item|
          @order_meal = OrderMeal.new(order_id: @order.id, meal_id: item["id"], quantity:item["qtd"].to_i)
          @order_meal.save!
      end

      session[:cart].clear

      redirect_to orders_path
  end

  def edit
  end

  def update
      @order.update(order_params)
      redirect_to orders_path
  end

  def destroy
      @order.destroy
      redirect_to orders_path
  end

  private
  def order_params
      params.require(:order).permit(:price, :user_id, :situation_id)
  end

  def set_order
      @order = Order.find(params[:id])
  end

  def check_user
    unless user_signed_in?
        redirect_to new_user_session_path
        flash[:warning] = "Faça login ou crie sua conta antes."
    end
  end

end
