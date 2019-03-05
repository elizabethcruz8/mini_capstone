class Api::ProductsController < ApplicationController
  def index 
    @products = Product.all 
    render "index.json.jbuilder"
  end 

  def create 
    @product = Product.new(
    name: params[:body_name],
    price: params[:body_price],
    description: params[:body_description],
    image_url: params[:body_image_url])
    @product.save
    render "show.json.jbuilder"
  end 

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end 

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:body_name] || @product.name 
    @product.price = params[:body_price] || @product.price
    @product.description = params[:body_description] || @product.description
    @product.image_url = params[:body_image_url] || @product.image_url
    @product.save
    render "show.json.jbuilder"
  end 
  def destroy 
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Product succesfully destroyed!"}
  end
end 




  # def products_method
  #   @products = Product.all
  #   render "products.json.jbuilder"
  # end

  # # def products_method #to view all 
  # #   @controller = Product.all 
  # #   @controller2 = Product.all
  # #   @controller3 = Product.all
  # # end 
  
  # def one_product_method 
  #   product_id = params["id"]  #first thing is find id 
  #   # @message = "The given id is #{product_id}"
  #   @product = Product.find_by(id: product_id)  #second find product  
  #   render "product_query.json.jbuilder"
  # end 

