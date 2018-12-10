require_relative 'order'

class Takeaway

  attr_reader :order

  def initialize(order = Order.new)
    @order = order
  end

  def show_menu
    order.menu
  end

  def place_order(item, quantity = 1)
    order.add_to_order(item, quantity)
    order.items
  end

  def verify_order
    # fail "No items have been ordered from the menu" if @items == []
    order.calculate_total
  end

end
