class Resume < ActiveRecord::Base

  belongs_to :user
  
  has_attached_file :document
  validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}

  validates :name, :p_number, :email, :position, :reference, presence: true
  

end
