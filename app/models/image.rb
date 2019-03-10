class Image < ApplicationRecord
  belongs_to :product
  # def product #image has many products 
  #   Product.where(image_id: id) 
  # end
end 
