require "pry"
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    item_name_and_price = {}
      item_name_and_price[:item] = item
      item_name_and_price[:price] = price
    quantity.times {@items << item_name_and_price}
    @total += (price*quantity)
  end

   def apply_discount
     discounted_price = @total-(@total*(discount.to_f/100))
     if @total == discounted_price
       return "There is no discount to apply."
     else
        @total = discounted_price
        return "After the discount, the total comes to $#{discounted_price.to_i}."
    end
    #puts discounted_price
   end


  def items
    @items.collect {|name_and_price| name_and_price[:item]}
  end

  def void_last_transaction
    last_transaction = @items.last[:price]
     @total -= last_transaction
  end

end
