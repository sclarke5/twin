class ReviewsController < ApplicationController

  def create
    @review = Review.new
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    if @review.save
			redirect_to product_path(id: params[:product_id])
		else
			flash[:warning] = @review.errors.full_messages
		 	redirect_to product_path(id: params[:product_id])
		end
  end

  def edit
    @review = Review.find(params[:id])
    @product = @review.product
  end

  def update
  end

  def destroy
  end

end
