class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @rating = Rating.where(product_id: params[:id])
    
    @userID = Rating.where(product_id: params[:id]).pluck(:user_id)
    # @user = User.find(@userID)
  end

end
