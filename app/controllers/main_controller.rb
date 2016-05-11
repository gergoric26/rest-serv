class MainController < ApplicationController
  def about
  end

  def all_resumes
    @resumes = Resume.all
  end
end
