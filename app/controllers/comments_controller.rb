class CommentsController < ApplicationController

  def create
    @recipe = Recipe.friendly.find(params[:recipe_id])
    @comment = @recipe.comments.create(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to recipe_path(@recipe)
    end
    
  end
 
  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
