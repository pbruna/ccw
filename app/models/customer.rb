class Customer < ActiveRecord::Base
  attr_accessible :name
  has_many :servers
  has_many :controls
  
  validates_presence_of :name
end
