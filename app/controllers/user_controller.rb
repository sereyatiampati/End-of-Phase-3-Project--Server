class UsersController < ApplicationController
    get "/users/:id" do
        User.find_by(id: params[:id]).to_json
    end

    post '/users' do
        user = User.create(
            firstName: params[:firstName], 
            lastName: params[:lastName]
            email: params[:email], 
            password_digest: params[:password]
            )
        session[:user_id] = user.id
        user.to_json
    end
end