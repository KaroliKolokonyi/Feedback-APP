class SubmissionsController < ApplicationController
before_action :authenticate_user



def index

  if current_user.reviewee == true
    if  params[:sort] == "ASC"
      @submisions = current_user.submisions.all.order(created_at: params[:sort])    
    else
      @submisions = current_user.submisions.all
    end

  else
    @users = User.all 
    if params[:sort] == "false"
      @submisions = Submision.where("graded = ?", params[:sort])
    elsif params[:sort] == "ASC"
      @submisions = Submision.all.order(created_at: params[:sort]) 
    else
      @submisions = Submision.all
    end 
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

  def edit
    @submision = submision.find_by(id: params[:id])
  end

  def update
    submision = submision.find_by(id: params[:id])
    submision.submision = params[:submision]
    submision.user_id = params[:user_id]

    submision.save
    flash[:success] = "Submision Updated"
    redirect_to "/submisions/#{submision.id}"
  end

end
