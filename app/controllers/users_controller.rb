class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
  end

## adapt the following for your usertask example (from railstutorial's twitter follower/following example)
  # def following
  #   @title = "Following"
  #   @user  = User.find(params[:id])
  #   @users = @user.following.paginate(page: params[:page])
  #   render 'show_follow'
  # end
  #
  # def followers
  #   @title = "Followers"
  #   @user  = User.find(params[:id])
  #   @users = @user.followers.paginate(page: params[:page])
  #   render 'show_follow'
  # end
end
