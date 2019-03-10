class Supplier < ApplicationRecord

  has_many :products 
  # def products #supplier has many products
  #   Product.where(supplier_id: id)
  # end
end 