class Admin::DashboardController < ApplicationController
  def show
    @category = Category.count()
    @producy = Product.count()
  end
end
