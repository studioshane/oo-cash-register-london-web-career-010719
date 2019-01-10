#
#
# def shopping_total(item, price, quantity=1)
#   total = 1
#
#   total += (price*quantity)
#
#   basket = []
#
#   quantity.times {basket << item}
#
#   puts "**********************************"
#   if quantity == 1
#     puts "Thank you for buying #{quantity} #{item},
#     your total is #{total}."
#   else
#     puts "Thank you for buying #{quantity} #{item}s,
#     your total is #{total}."
#   end
#
#   puts "**********************************"
#
#   puts basket
# end
#
#
# shopping_total("rabbit", 2, 2)


def apply_discount(discount=0)
  total = 100
  discounted_price = total-(total*(discount.to_f/100))
  if total == discounted_price
    puts "No discount has been applied"
  else
    puts "Discount applied, your new total is #{discounted_price.to_i}."
 end
 puts discounted_price
end

apply_discount(50)
