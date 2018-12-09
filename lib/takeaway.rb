require_relative 'order'

class Takeaway

  attr_reader :order

  def initialize(order = Order.new)
    @order = order
  end

  def menu
    order.menu
  end

  def place_order(item, quantity = 1)
    order.add_to_order(item, quantity)
  end

end
