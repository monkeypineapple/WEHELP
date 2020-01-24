class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @user = User.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.reviewer_id = current_user.id
    if @review.save!
      redirect_to user_path(review_params[:reviewee_id])
    else
      render :new
    end
  end
  
  private
  def review_params
    params.require(:review).permit(:body, :reviewer_id, :reviewee_id)
  end
end
