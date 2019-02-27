class Api::ProductsController < ApplicationController
  def products_method 
    @controller = Product.all 
    @controller2 = Product.all
    @controller3 = Product.all

    render "products.json.jbuilder"
  end
end 
