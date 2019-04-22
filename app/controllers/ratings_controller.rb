class RatingsController < ApplicationController
    def create
        
        # @rating = Rating.new(rating_params)

        @product = Product.find(params[:product_id])
        @rating = @product.ratings.new(rating_params)
        @rating.user = current_user
        @rating.save

        
        if @rating.save
            
            redirect_to [:root], alert: "Rating Created"
            
        else
            
            redirect_to :back
        end
    end

    private

    def rating_params
        params.require(:rating).permit(
            :description,
            :rating,
            )
    end
end

# user = User.new(user_params)

# "rating"=>{"description"=>"yo", "rating"=>"2"}, "commit"=>"Submit Rating", "product_id"=>"10"}

# Rating.new(id: 1, product_id: 2, description: "hi", user_id: 3, rating: 4)


# if @product.save
#     redirect_to [:admin, :products], notice: 'Product created!'
#   else
#     render :new
#   end