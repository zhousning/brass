class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def edit 
    @user = User.find(params[:id])
    @roles = Role.all
  end
end
