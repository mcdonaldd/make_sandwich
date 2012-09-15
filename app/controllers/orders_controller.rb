class OrdersController < ApplicationController
  before_filter :authenticate_user!, :except => [:new]
  def new
    @order = Order.new
  end

  def create
    @order = current_user.orders.build(params[:order])
    @order.save
      redirect_to @order, :notice => "Deliciousness awaits."
  end

  def show
    @order = Order.find(params[:id])
  end

  def index
    @orders = Order.order("created_at DESC")
  end
end
