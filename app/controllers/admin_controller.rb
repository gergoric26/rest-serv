class AdminController < ApplicationController
  
  before_filter :authenticate_admin!
  
  def admin_page
    @resumes = Resume.all
  end

end
