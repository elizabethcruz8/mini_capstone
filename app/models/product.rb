class Product < ApplicationRecord
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