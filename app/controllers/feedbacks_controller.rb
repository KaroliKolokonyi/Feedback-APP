class FeedbacksController < ApplicationController


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

end
