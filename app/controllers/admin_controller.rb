class AdminController < ApplicationController
  
  def admin_page
    @resumes = Resume.all
  end

end
