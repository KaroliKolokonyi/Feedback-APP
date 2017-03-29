class FeedbacksController < ApplicationController
before_action :authenticate_user

 def new
  end

  def create
    user_id = current_user.id
    feedback = params[:feedback]
    submision_id = params[:submision_id]

    feedback = Feedback.new({feedback: feedback, user_id: user_id, submision_id: submision_id})
    
    if feedback.save
      submision = Submision.find_by(id: submision_id)
      submision.graded = true
      submision.save
    end
    redirect_to :back
  end

  def edit
    @feedback = Feedback.find_by(id: params[:id])
    @submision = @feedback.submision

  end

  def update
    feedback = Feedback.find_by(id: params[:id])
     @submision = feedback.submision
    feedback.feedback = params[:feedback]
    feedback.user_id = params[:user_id]
    submision_id = params[:submision_id]
  
    feedback.save
    flash[:success] = "feedback Updated"
    redirect_to "/submisions/#{@submision.id}"
  end
end
