class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
  end

  def show
    @resume = Resume.find(params[:id])
  end

  def new
    @resume = Resume.new
  end

  def edit
    @resume = Resume.find(params[:id])
  end


  private

  def resume_params
    params.require(:resume).permit(:name, :email, :p_number, :position, :cover, :resume, :reference)
  end
end
