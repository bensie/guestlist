class Family < ActiveRecord::Base
  
  belongs_to :group
  
  has_many :people, :dependent => :destroy
  
  validates_presence_of :name
  
  accepts_nested_attributes_for :people, :allow_destroy => :true
  
end
