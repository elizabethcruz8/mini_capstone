class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true 
  validates :description, length: { in: 2..500 } 


  belongs_to :supplier 
  #Product belongs to supplier 
  # def supplier 
  #   Supplier.find_by(id: supplier_id) #id means self.id (supplier id )
  # end 

  has_many :images
  # def images #product has many images 
  #   Image.where(product_id: id) #self.id 
  # end 
  has_many :orders 

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