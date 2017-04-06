class AvatarsController < ApplicationController
  before_action :set_avatar
  before_action :owned_profile, only: [:edit, :update]

  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update(avatar_params)
      flash[:success] = 'Your avatar has been updated.'
      redirect_to :back
    else
      @user.errors.full_messages
      flash[:error] = @user.errors.full_messages
      render :edit
    end
  end

  private

  def set_avatar
    @user = User.find(params[:id])
  end

  def avatar_params
    params.require(:user).permit(:avatar)
  end

  def owned_profile
    @user = User.find(params[:id])
    unless current_user == @user
      flash[:alert] = "That profile doesn't belong to you!"
      redirect_to root_path
    end
  end
end
