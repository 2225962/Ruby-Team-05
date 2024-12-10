class Order 

  DISCOUNTS = {'food' => 0.9, 'electronics' => 0.8}.freeze

  def initialize(items)
    @items = items
  end

  def total_price
    @items.sum{ |item| item[:price] * discount_for(item[:category])}
  end

  def discount_for(category)
    DISCOUNTS.fetch(category, 1.0)
  end
end

items = [
  { name: 'Apple', category: 'food', price: 100 },
  { name: 'Laptop', category: 'electronics', price: 1000 },
  { name: 'Book', category: 'other', price: 50 }
]

order = Order.new(items)
puts "Total Price: #{order.total_price}"
