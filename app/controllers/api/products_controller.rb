class Api::ProductsController < ApplicationController
  def index 
    @products = Product.all 

    if params["search"]
      @products = @products.where("name ILIKE ?", "%#{params["search"]}%")
    end 

    if params["discount"]
      @products = @products.where("price < ?", 60)
    end 

    if params["sort"] == "price" && params["sort_order"] == "asc"
      @products = @products.order(:price => :asc)
    elsif params["sort"] == "price" && params["sort_order"] == "desc"
      @products = @products.order(:price => :desc)
    else 
      @products = @products.order(:id => :desc)
    end

    render "index.json.jbuilder"
  end 

  def create 
    @product = Product.new(
    name: params[:body_name],
    price: params[:body_price],
    description: params[:body_description],
    image_url: params[:body_image_url])
    if @product.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end 
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
    if @product.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end 
  end 
  def destroy 
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Product succesfully destroyed!"}
  end
end 
