class ReviewsController < ApplicationController
  # New review
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review = Review.new
end
