class Control < ActiveRecord::Base
  attr_accessible :server_id, :customer_id, :user_id, :file, :backup_file, :subject, :body
  
  belongs_to :server
  belongs_to :customer
  belongs_to :user
  
  validates_presence_of :server_id, :user_id, :file, :backup_file, :subject
  
end
