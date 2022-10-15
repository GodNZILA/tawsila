class ReviewsController < ApplicationController

  def index
    @reviews = Review.where(user_id: params[:user_id])
    #le all sur review doit se faire juste sur un user pas sur tous les reviews
  end

  def new
    @review = Review.new
  end

  def create!
    @review = Review.new(review_params)
    @review.user = current_user
    @review.save
    redirect_to reviews_path
  end
end

private

def review_params
  params.require(:review).permit(:content, :rating)
end
