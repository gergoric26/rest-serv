class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
