class UsersController < ApplicationController
  layout 'layouts/with_sidebar'

  def show
    @user = current_user
  end

  def edit
    # @user = User.find(params[:id])
  end

  def update
    # @user = User.find(params[:id])
    # if @user.update(user_params)
    #   redirect_to dashboard_path
    # else
    #   render :edit
    # end
  end

  def destroy
    # @user = User.find(params[:id])
    # @user.destroy
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end