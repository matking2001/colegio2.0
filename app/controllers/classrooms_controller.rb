class ClassroomsController < ApplicationController
  before_action :set_classroom, only: %i[]
  before_action :set_user, only: %i[show edit update destroy]

  def index
    @users = @classroom.users
  end

  def show
    
  end

  def edit
    
  end
  
  

  private

  def set_classroom
    @classroom = Classroom.find(params[:classroom_id])
  end

  def set_user
    @user = User.find(params[:id])
  end
  
  
end
