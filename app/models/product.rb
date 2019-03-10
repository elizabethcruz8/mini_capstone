class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true 
  validates :description, length: { in: 2..500 } 

  #Product belongs to supplier 
  def supplier 
    Supplier.find_by(id: supplier_id)
  end 

  def images #product has many images 
    Image.where(product_id: id) 
  end 

  def is_discounted? 
    if price  <= 10 == true 
      else 
        false 
    end
  end  
  
  def tax 
    tax_rate = 0.09
    tax = price * tax_rate 
    tax.round(2)
  end

  def total 
    total = price + tax 
  end 
end 