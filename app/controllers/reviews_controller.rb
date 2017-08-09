class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
     @review = Review.find(params[:restaurant_id])

  end

  def update
    @review = Review.find(params[:restaurant_id])
    @review.update(params[:restaurant])
    redirect_to restaurant_path(@restaurant)
  end


  def review_params
  # *Strong params*: You need to *whitelist* what can be updated by the user
  # Never trust user data! ADD TO THIS ONE!!
  params.require(:review).permit(:content, :rating)
  end

end
