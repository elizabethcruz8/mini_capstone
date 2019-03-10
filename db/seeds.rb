# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


supplier1 = Supplier.new(name:"Sony",email:"Sony@sony.com", phone_number:"549-098-7654")
supplier1.save!

supplier2 = Supplier.new(name:"Oubang",email:"Oubang@oubang.com", phone_number:"994-809-8756")
supplier2.save!

controller1 = Product.new({name:"DualShock4_Gold",price:48, description:"Enhanced analog sticks", supplier_id: 1})
controller1.save!

controller2 = Product.new({name:"DualShock4_Crystal",price:55, description:"Charge efficiently", supplier_id: 1})
controller2.save!

controller3 = Product.new({name:"DualShock4_ChangingColor",price:75,description:"Color changing effect", supplier_id: 2})
controller3.save!

image1 = Image.new(url:"https://m.media-amazon.com/images/I/81ELkUu9omL._AC_UL436_.jpg", product_id: 1)
image1.save!

image1_a = Image.new(url:"https://images-na.ssl-images-amazon.com/images/I/51-AdG8f4cL._SY450_.jpg", product_id:1)
image1_a.save!

image2 = Image.new(url:"https://m.media-amazon.com/images/I/71uZID+EhLL._AC_UL436_.jpg", product_id:2)
image2.save!

image3 = Image.new(url:"https://m.media-amazon.com/images/I/91OaXCM75KL._AC_UL436_.jpg", product_id:3)
image3.save!