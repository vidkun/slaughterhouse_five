class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :set_cow, only: [:create, :update, :new]

  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = @cow.orders.build(order_params)
    respond_to do |format|
      if @order.save
        UserReserve.order_reserved(user, order).deliver
        format.html { redirect_to root_path, notice: "Order ##{@order.id} was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to orders_url, notice: "Order ##{@order.id} was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    begin
      @order.destroy
      flash[:notice] = "Order ##{order.id} deleted!"
    rescue StandardError => e
      flash[:notice] = e.message
    end
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def set_cow
    @cow = Cow.find(params[:cow_id])
  end

  def order_params
    params.require(:order).permit(:cut,
                                  :amount,
                                  :user_id,
                                  :cow_id)
  end
end
