class User < ActiveRecord::Base
  attr_accessible :login, :name, :password
  
  has_many :controls
  
  validates_presence_of :name, :password, :login
end
