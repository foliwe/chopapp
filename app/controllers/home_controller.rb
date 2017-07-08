class HomeController < ApplicationController
  def index
    @q = Recipe.ransack(params[:q])
    @recipes = @q.result(distinct: true)
  end

  def profile
    if User.find_by_name(params[:id])
      @username = params[:id]
   else
      redirect_to root_path, notice: "User Not Found"
   end
      @recipes = Recipe.where("user_id = ?", User.find_by_name(params[:id]))
  end
  
  def traditional
    @recipes = Recipe.traditional
    render :index
  end

end
