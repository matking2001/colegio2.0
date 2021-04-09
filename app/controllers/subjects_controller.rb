class SubjectsController < ApplicationController
  before_action :set_user
  before_action :set_subject, only: %i[update show destroy edit]

  def index
    @subjects = @user.subjects.all
  end

  def show
    
  end
  

  def new
    @subject = @user.subjects.new
  end

  def create
    @subject = @user.subjects.new(subject_params)
    respond_to do |format|
      if @subject.save
        format.html {redirect_to user_subjects_path, notice:"subjecte creado."}
      else
        format.html {redirect_to user_subjects_path, alert:"No pudo ser creada el subjecte."}
      end
    end
  end
  
  def edit

  end

  def update
    if @user.subjects.update(subject_params)
      flash[:notice] = "Materia actualizad"
      redirect_to user_subjects_path 
    else
      render :edit
    end
  end

  def destroy
    @subject.destroy
    flash.alert = "Materia eliminada"
    redirect_to user_subjects_path(@user)
  end
  
  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_subject
    @subject = @user.subjects.find(params[:id])  
  end
  
  def subject_params 
    params.require(:subject).permit(:user_id, :codigo, :nombre)
  end
  
end
