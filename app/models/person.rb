class Person < ActiveRecord::Base
  
  belongs_to :family, :counter_cache => true
  belongs_to :food
  
  validates_presence_of :name
  
  named_scope :attending, :conditions => { :attending => true }
  named_scope :declined, :conditions => { :attending => false }
  named_scope :not_responded, :conditions => { :attending => nil }
end
