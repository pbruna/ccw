class Customer < ActiveRecord::Base
  attr_accessible :name
  has_many :servers
  
  validates_presence_of :name
end
