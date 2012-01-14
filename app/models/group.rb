class Group < ActiveRecord::Base

  has_many :families, :dependent => :destroy, :order => :name
  has_many :people, :through => :families

  validates_presence_of :name

end
