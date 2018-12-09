class Order

  attr_reader :items, :menu

  def initialize
    @items = []

    @menu = {
        "fish": 1,
        "chips": 1,
        "roe": 2,
        "sausage": 2,
        "scallops": 3,
        "curry_sauce": 1,
        "peas": 1,
        "mussels": 1,
        "pasty": 2,
        "pie": 3,
    }
  end

  def add_to_order(item, quantity)
    quantity.times do
      @items << item
    end
  end

end
