class Server < ActiveRecord::Base
  attr_accessible :name, :customer_id, :password, :ip_address, :operative_system, :os_version
  
  belongs_to :customer
  has_many :controls
  
  validates_presence_of :name, :password, :ip_address, :operative_system
  
end
