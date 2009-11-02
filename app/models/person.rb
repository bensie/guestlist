class Person < ActiveRecord::Base
  
  belongs_to :family, :counter_cache => true
  belongs_to :food
  
  validates_presence_of :name
  
end
