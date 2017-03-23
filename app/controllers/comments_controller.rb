class CommentsController < ApplicationController
before_action :authenticate_user


  def show
    @comment = Comment.find_by(id: params[:id])
    
  end

   def new
   end

  def create
    user_id = current_user.id
    feedback_id = params[:feedback_id]
    comment = params[:comment]

    
    comment = Comment.new(feedback_id: feedback_id, user_id: user_id, comment: comment)
    comment.save
    
    redirect_to :back
  end

end
