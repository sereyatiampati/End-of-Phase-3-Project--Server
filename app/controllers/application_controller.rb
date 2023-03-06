class ApplicationController < Sinatra::Base
    set default_content_type: "application/json"

    # use Rack::Auth::Basic, "Restricted Area" do |username, password|
    #   username == 'admin' and password == 'admin'
    # end

    # helpers do
    #   def protected!
    #     return if authorized?
    #     headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    #     halt 401, "Not authorized\n"
    #   end
    
    #   def authorized?
    #     @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    #     @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
    #   end
    # end

    configure do
      set :sessions, true
      set :session_secret, ENV["SESSION_SECRET"]
    end

    #GET
    get '/reviews' do
        reviews = Review.all.order("created_at DESC")
        reviews.to_json(include: :product)
      end

      get '/reviews/:id' do
        review = Review.find(params[:id])
        review.to_json
      end


    get '/products' do
        products=Product.all
        products.to_json(include: :reviews)
    end

    get '/products/:id' do
      product=Product.find(params[:id])
      product.to_json(include: :reviews)
  end

  get "/users/:email" do
    user = User.find_by(params[:email])
    user.to_json(include: [:reviews])
  end


    #POST
    post '/reviews' do
        review= Review.create(
          star_rating: params[:star_rating],
          comment: params[:comment],
          title: params[:title],
          product_id: params[:product_id]
        )
        review.to_json
      end

      post '/users' do
        new_user= User.create(
          email: params[:email],
          firstName: params[:firstName],
          lastName: params[:lastName],
          password: params[:password]
        )
        new_user.to_json
      end

    #PATCH
    patch '/reviews/:id' do
        review_to_update = Review.find(params[:id])
        review_to_update.update(
            star_rating: params[:star_rating],
            comment: params[:comment],
            title: params[:title],
            product_id: params[:product_id]
        )
        review_to_update.to_json
      end

    #DELETE
    delete '/reviews/:id' do
        review_to_be_deleted = Review.find(params[:id])
        review_to_be_deleted.destroy
        review_to_be_deleted.to_json
      end

      #user-controller
      post '/users' do
        new_user= User.create(
          email: params[:email],
          firstName: params[:firstName],
          lastName: params[:lastName],
          password: params[:password]
        )
        new_user.to_json
      end

    get "/users/:email" do
        user = User.find_by(params[:email])
        user.to_json(include: [:reviews])
      end

    get "/users/:id" do
        User.find_by(id: params[:id]).to_json
    end

    post '/users' do
        user = User.create(
            firstName: params[:firstName], 
            lastName: params[:lastName],
            email: params[:email], 
            password_digest: params[:password]
            )
        session[:user_id] = user.id
        user.to_json
    end
    

    #Authenticate user login
    post 'users/login' do
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] =user.id
        redirect to "/reviews"
      else 
        flash[:error] = "Your credentials are invalid please enter valid details or sign up"
        redirect to '/login'
      end
      user.to_json     
    end

    #delete user session on logout
    delete '/users/logout' do
      session.clear
      session.to_json
end
end