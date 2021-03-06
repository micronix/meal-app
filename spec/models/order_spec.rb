require 'rails_helper'

RSpec.describe Order, type: :model do

  it "should return correct amount" do
    FactoryGirl.create(:meal, name: "Pizza", price: 10)
    FactoryGirl.create(:meal, name: "Apple", price: 1)

    order = Order.build(["Pizza", "Apple"], 3)

    expect(order.amount).to eq(11)
  end

  it "should contain 2 meals" do
    FactoryGirl.create(:meal, name: "Pizza", price: 10)
    FactoryGirl.create(:meal, name: "Apple", price: 1)

    order = Order.build(["Pizza", "Apple"], 3)

    expect(order.meals.length).to eq(2)
  end
end
