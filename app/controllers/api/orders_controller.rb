class Api::OrdersController < ApplicationController
  before_action :authenticate_user #don't have to put if conditions on update, create, and other action models 

  def index
    @orders = current_user.orders
    render "index.json.jbuilder" 
  end 


  def create 
    # look in the products table, find the product with an id of params[:product_id], grab the price

    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax 


    @order = Order.new(
    user_id: current_user.id,
    product_id: params[:product_id],
    quantity: params[:quantity],
    subtotal: calculated_subtotal, 
    tax: calculated_tax, 
    total: calculated_total  
    )
    if @order.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
