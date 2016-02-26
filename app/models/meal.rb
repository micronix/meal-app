class Meal < ActiveRecord::Base
  has_many :order_meals
  has_many :orders, through: :order_meals

  belongs_to :category
end
