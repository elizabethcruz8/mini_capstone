class Image < ApplicationRecord
  def product #image has many products 
    Product.where(image_id: id) 
  end
end 
