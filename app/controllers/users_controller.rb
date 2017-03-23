class UsersController < ApplicationController
  before_action :authenticate_user

def  index 
   @users = User.all 

   render "index.html.erb"
end 



def new
    render 'new.html.erb'
  end

  def create
    user = User.new(
      First_name: params[:First_name],
      Last_name: params[:Last_name],
      Email: params[:Email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      reviewee: params[:reviewee]
    )

    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully Created Account!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup'
    end
  end

  
end
