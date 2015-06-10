class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @review = Review.new()
  end

  def index
    @reviews = Review.all
  end
end
