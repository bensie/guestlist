class Group < ActiveRecord::Base
  
  has_many :families, :dependent => :destroy
  has_many :people, :through => :families
  
end
