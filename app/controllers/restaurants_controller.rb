class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if params[:query].present?
      @restaurants = @restaurants.where('name ILIKE ?', "%#{params[:query]}%")

      respond_to do |format|
        format.html { render 'index' }
        format.text { render partial: 'list', locals: { restaurants: @restaurants }, formats: [:html] }
      end
    else
      respond_to do |format|
        format.html { render 'index' }
        format.text { render partial: 'list', locals: { restaurants: @restaurants }, formats: [:html] }
      end
    end
  end



  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end
end
