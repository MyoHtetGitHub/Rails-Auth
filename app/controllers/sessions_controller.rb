class SessionsController < ApplicationController
  def new
  end

  def index
  end
  def create
  	 user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
       	 redirect_to root_url
    else
      
      render 'new'
    end
  end
end
