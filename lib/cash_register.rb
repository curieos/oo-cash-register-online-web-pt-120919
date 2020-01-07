
class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
  end
  
  def add_item(item, cost, quantity = 1)
    @total += cost * quantity
  end
  
  def apply_discount()
    @total -= @discount*0.01*@total
    "After the discount, the total comes to $#{total.round}"
  end
end