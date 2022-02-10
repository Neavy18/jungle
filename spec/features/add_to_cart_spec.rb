require 'rails_helper'

RSpec.feature "Add Item to Cart", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    1.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        quantity: 10,
        price: 64.99
      )
    end
  end


  scenario "They add product to cart" do
    visit root_path

    expect(page).to have_css 'article.product', count: 10
  end

end