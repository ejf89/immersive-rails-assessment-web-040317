class UsersController < ApplicationController
  def index
  end

  def new
      @user = User.new
  end

  def create
     @user =  User.create(username: params["username"], password_digest: params["password"])
    # @user = User.new()
      session[:user_id] = @user.id
      redirect_to episodes_path
  end
end
