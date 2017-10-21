class IdeasController < ApplicationController
     before_action :require_login
  def index
       @user = User.find(current_user)
       @ideas = Idea.all
       puts "CCCCCCCCCCCCCCCCCCC"

  end
  def new

  end
  def create
      @idea = Idea.create(idea_params)
      puts "AAAAAAAAAAAAAAAAAAAAAAAAAAA"
      return redirect_to ideas_home_path if @idea.valid?

      flash[:errors] = @idea.errors.full_messages
      puts "BBBBBBBBBBBBBBBBBBBBBBBBBBBBB"
      return redirect_to :back


  end
  def delete
       @idea = Idea.find(params[:id])
       puts "DDDDDDDDDDDDDDDDDDDDDDD"
       @idea.delete

       return redirect_to :back
  end

  private
       def idea_params
                 params.require(:idea).permit(:content).merge(user: current_user)
       end
end
