class Item
  attr_reader :quantity
  attr_accessor :name, :price, :description

  def initialize(name, price, quantity = 0, description = '')
    @name = name
    @price = price
    @quantity = quantity
    @description = description
  end

  def sell(amount)
    if @quantity >= amount
      @quantity -= amount
      true
    else
      false
    end
  end

  def stock(amount)
    @quantity += amount
    true
  end
end
