class SessionsController < ApplicationController
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