class SubmissionsController < ApplicationController
before_action :authenticate_user
def index
  if current_user.reviewee == true
    if  params[:submision_time] 
      @submisions = current_user.submisions.all.order(created_at: params[:submision_time])
    else 
      @submisions = current_user.submisions.all
    end
  else
  @submisions = Submision.all
  @users = User.all 
  end
   return "index.html"
end 

def show
    @submision = Submision.find_by(id: params[:id])
    @feedback = Feedback.find_by(id: params[:id])
    @comment = Comment.find_by(id: params[:id])
    
end

 def new
    unless current_user
      redirect_to "/signup"
    end
end

  def create
    user_id = current_user.id
    submision = params[:submision]
    
    submision = Submision.new(submision: submision, user_id: user_id )

    submision.save
    redirect_to "/submisions/#{submision.id}"
  end


end
