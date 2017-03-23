class SessionsController < ApplicationController

   def new
    render "new.html.erb"
  end

  def create
    user = User.find_by(Email: params[:Email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/submisions"
    else
      flash[:warning] = "Invalid email or password!"
      redirect_to "/login"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/signup"
  end

end
