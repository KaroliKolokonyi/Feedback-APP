class SubmissionsController < ApplicationController

def index
  @submisions = Submision.all.order(:submision_time)
  @users = User.all 
  @feedbacks = Feedback.all 
  # if params[:sort]@@
  #     @submisions = submision.all.order(submision_time: params[:submision_time])
  #  @ elsif params[:filter] == "discount"
  #     @submisions = submision.discounted_submisions
  #   elsif params[:category]
  #       @submisions =  Category.find_by(name: params[:category]).submisions
  #   else
  #     @submisions = Submision.all
  #   end

   return "index.html"
  end 

def show
    @submision = Submision.find_by(id: params[:id])
    @feedback = Feedback.find_by(id: params[:id])
    
  end

 def new
    unless current_user
      flash[:message] = "Only signed in users can submit!"
      redirect_to "/signup"
    end
  end

  def create
    user_id = current_user.id
    submision = params[:submision]
    submision_time = params[:submision_time]

    
    submision = Submision.new({submision: submision, user_id: user_id, submision_time: submision_time})

    submision.save

    flash[:success] = "Submision Made"
    redirect_to "/submisions/#{submission.id}"
  end


end
