# app/controllers/reviews_controller.rb
class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new(review_params)
    if @review.save
      redirect_to @restaurant
    else
      render :new
    end

    def destroy
    @review = Review.find(params[:id])
    @restaurant = @review.restaurant # 削除後に戻る場所をキープ
    @review.destroy
    # Rails 7/8 では status: :see_other を付けるのがルールです
    redirect_to restaurant_path(@restaurant), status: :see_other
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
