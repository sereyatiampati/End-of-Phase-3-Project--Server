class ApplicationController < Sinatra::Base
    set default_content_type: "application/json"

    #GET
    get '/reviews' do
        reviews = Review.all
        reviews.to_json
      end

    get '/products' do
        products=Product.all
        products.to_json
    end
    #POST
    post '/reviews' do
        review= Review.create(
          star_rating: params[:star_rating],
          comment: params[:comment],
          product_id: params[:product_id]
        )
        review.to_json
      end

    #PATCH
    patch '/reviews/:id' do
        review_to_update = Review.find(params[:id])
        review_to_update.update(
            star_rating: params[:star_rating],
            comment: params[:comment]
        )
        review_to_update.to_json
      end

    #DELETE
    delete '/reviews/:id' do
        review_to_be_deleted = Review.find(params[:id])
        review_to_be_deleted.destroy
        review_to_be_deleted.to_json
      end

    
end