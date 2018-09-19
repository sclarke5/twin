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
    @review = Review.find(params[:id])
    @product = @review.product
    @review.comment = params[:review][:comment]

    if @review.save
      redirect_to product_path(id: params[:product_id])
    else
    	flash[:warning] = @review.errors.full_messages
      render edit_product_review_path #this won't work anyway.. need params
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "Review successfully deleted"
    redirect_to product_path(id: params[:product_id])
  end

end
