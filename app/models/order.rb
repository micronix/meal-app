class Order < ActiveRecord::Base
  has_many :order_meals
  has_many :meals, through: :order_meals

  def self.build(names, user_id)
    order = Order.new

    total = 0

    names.each do |name|
      meal = Meal.find_by(name: name)
      total = total + meal.price
    end

    order.amount = total

    return order
  end
end
