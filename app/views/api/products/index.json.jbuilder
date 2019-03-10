json.array! @products.each do |product|
  json.partial! "product.json.jbuilder", product: product 
end 





# json.array! @products.each do |product|
#   json.id product.id 
#   json.name product.name 
#   json.price product.price 
#   json.image_url product.image_url
#   json.description product.description 
#   json.is_discounted? product.is_discounted? 
#   json.tax product.tax
#   json.total product.total 
# end 


# json.output @output_product
# json.controller1 @controller.first
# json.controller2 @controller2.second
# json.controller3 @controller3.third

# json.array! @products.each do |product|
#   json.name product.name
#   json.price product.price

