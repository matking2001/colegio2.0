class UsersController < ApplicationController
  before_action :set_user, only: %i[update destroy edit show]
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private 

  def set_user
    @user = User.find(params[:id])
  end
  
end
