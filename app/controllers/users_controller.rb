class UsersController < ApplicationController

  def index
    @users = User.by_karma.page(params[:page]).per_page(200)
  end
end
