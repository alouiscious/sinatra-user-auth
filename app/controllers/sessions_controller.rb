class SessionsController < ApplicationController
  get '/sessions/login' do

    # the line of code below renders the view page in app/views/sessions/login.erb
    erb :'sessions/login'
  end

  post '/sessions' do
    puts params

    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      session[:user_id] = @user.id
      redirect '/users/home'
    end
    redirect '/sessions/login'
  end

  get '/sessions/logout' do
    session.clear
    redirect '/'
  end
end