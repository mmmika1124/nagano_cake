class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
  end

  def update
    @order = Order.find(params[:id])
    @order.update(status: params[:order][:status])
    redirect_to admin_order_path(@order.id)
  end


  private

  def order_params
    params.require(:order).permit(:customer_id, :status)
  end

end
