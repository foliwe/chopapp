class CommentsController < ApplicationController
  before_action :authenticate_user!
   
  def create
    @recipe = Recipe.friendly.find(params[:recipe_id])
    @comment = @recipe.comments.create(comment_params)
    @comment.user = current_user
    @comment.save!
    respond_to do |format|
      format.html {redirect_to recipe_path(@recipe)}
      format.js
      
    end
    
  end
 
  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
