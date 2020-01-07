
class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
    @items = []
  end
  
  def add_item(item, cost, quantity = 1)
    @total += cost * quantity
    quantity.times do
      @items << item
    end
  end
  
  def apply_discount()
    @total -= @discount*0.01*@total
    if @total > 0
      "After the discount, the total comes to $#{total.round}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction()
    
  end
end