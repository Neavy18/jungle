require 'rails_helpers.rb'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    before (:each) do
      @category = Category.new name "New Category"
      @new_product = Product.new(name = "New Item", price_cents: 7500, quantity: 1, category: @category)
    end

    it "Succesfully saves if all four fields are set" do
      @new_product.save
      expect(@new_product).to be_valid
    end

    it "Validates that name field can't be blank" do
      @new_product[:name] = nil
      expect(@new_product).to_not be_valid
    end

    it "Validates that price field can't be blank" do
      @new_product[:price] = nil
      expect(@new_product).to_not be_valid
    end

    it "Validates that quantity field can't be blank" do
    @new_product[:quantity] = nil
    expect(@new_product).to_not be_valid
    end

    it "Validates that category field can't be blank" do
    @new_product[:category] = nil
    expect(@new_product).to_not be_valid
    end
  end
end