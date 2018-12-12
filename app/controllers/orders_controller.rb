class OrdersController < ApplicationController
  before_action :check_admin_status , only: [:index, :edit, :show, :destroy]
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  ORDERS_SIZE = 5

  def index
      @orders = Order.all
      @page = (params[:page] || 0).to_i
      @orders = Order.offset(ORDERS_SIZE * @page).limit(ORDERS_SIZE)
  end

  def show
  end

  def new
      @order = Order.new
  end

  def create
      @order = Order.new(order_params)
      @order.save!
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
end
