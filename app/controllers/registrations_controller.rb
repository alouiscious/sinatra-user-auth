class RegistrationsController < ApplicationController
  get '/registrations/signup' do

    erb :'/registrations/signup'
  end

  post '/registrations' do
    puts params
    
    @user = User.new(name: params["name"], email: params["email"], password: params["password"])
    @user.save
    session[:user_id] = @user.id
    
    redirect '/users/home'
  end
end