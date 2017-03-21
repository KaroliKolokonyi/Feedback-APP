class CommentsController < ApplicationController



  def show
    @comment = Comment.find_by(id: params[:id])
    
  end

   def new
   end

  def create
    user_id = current_user.id
    submision_id = params[:submision_id]
    comment = params[:comment]

    
    comment = Comment.new({submision_id: submision_id, user_id: user_id, comment: comment})
    comment.save
    redirect_to "/submisions/#{submission.id}"
  end

end
