class Order # 
  def initialize(items)
    @items = items
  end

  def total_price
    total = 0
    @items.each do |item|
      if item[:category] == 'food'
        total += item[:price] * 0.2
      elsif item[:category] == 'electronics'
        total += item[:price] * 0.1
      else
        total += item[:price] 
      end
    end
    total
  end
end

items = [
  { name: 'Apple', category: 'food', price: 100 },
  { name: 'Laptop', category: 'electronics', price: 1000 },
  { name: 'Book', category: 'other', price: 50 }
]

order = Order.new(items)
puts "Total Price: #{order.total_price}"
