class LikesController < ApplicationController
     before_action :require_login
  def new
  end
  def create
       idea = Idea.find(params[:like_id])

       Like.create(user:current_user, idea: idea) unless idea.users.include? current_user.to_int
       return redirect_to ideas_home_path

  end
  def show
       idea = Idea.find(params[:like_id])

       Like.create(user: current_user, idea: idea) unless idea.user.include? current_user
  end

  def destroy
       idea = Idea.find(params[:id])
       like = Like.find_by(idea: idea, user: current_user)
       like.delete
       return redirect_to ideas_home_path

  end

end
