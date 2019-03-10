class Supplier < ApplicationRecord
  def products #supplier has may products
    Product.where(supplier_id: id)
  end
end 