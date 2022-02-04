class Admin::DashboardController < ApplicationController
  def show
    @category = Category.count(:all)
    @product = Product.count(:all)
  end
end
