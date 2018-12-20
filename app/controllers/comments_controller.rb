class CommentsController < ApplicationController
  access user:{except: [:create]}, site_admin: :all
  def create
    @comment = current_user.comments.build(comment_params)
  end

  private
  
  def comment_params
    params.require(:comment).permit(:content)
  end
end
