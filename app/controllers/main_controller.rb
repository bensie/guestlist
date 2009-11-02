class MainController < ApplicationController
  
  def index
    @groups = Group.all(:order => :name, :include => :families)
  end
  
end
