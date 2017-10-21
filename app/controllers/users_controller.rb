class UsersController < ApplicationController

     before_action :require_login, except:[:new, :create]

  def new

  end

  def create
      user= User.create(user_params)

      if user.valid?
        session[:user_id] = user.id
        return redirect_to user_path user.id
      end
      flash[:errors] = user.errors.full_messages
      return redirect_to :back
  end
  def show
      @user = User.find(params[:id])
  end



  private
    def user_params
        params.required(:user).permit(:name, :alias, :email, :password, :password_confirmation)
    end
end
