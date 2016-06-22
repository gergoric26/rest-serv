class ResumesController < ApplicationController
  
  before_filter :authenticate!, only: [:index, :edit, :new, :destroy]

  def index
    @user = User.find(params[:user_id])
    @resumes = @user.resumes
    # @resumes = Resume.all
    # @resumes = Resume.where(created_at: 30.days.ago..Time.now)
  end

  def show
    @resume = Resume.find(params[:id])
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    @resume.user = current_user

    if @resume.save
      redirect_to @resume, notice: "Resume was created!"
    else
      flash[:error] = "Something went wrong!"
      render :new
    end
  end

  def update
    @resume = Resume.find(params[:id])
    @resume.assign_attributes(resume_params)

    if @resume.save
      redirect_to @resume, notice: "Resume was updated!"
    else
      flash[:error] = "Something went wrong!"
      render :edit
    end
  end

  def edit
    @resume = Resume.find(params[:id])
  end

  def destroy
    @resume = Resume.find(params[:id])

    if @resume.destroy
      flash[:notice] = "\"#{@resume.name}\" was deleted successfully."
      redirect_to @resume
    else
      flash[:error] = "There was an error deleting the resume."
      render :show
    end
  end


  private

  def resume_params
    params.require(:resume).permit(:name, :email, :p_number, :position, :cover, :document, :reference, :user_id)
  end
end
