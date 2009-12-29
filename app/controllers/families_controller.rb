class FamiliesController < ApplicationController
  def index
    redirect_to root_path
  end
  
  def list
    case params[:display]
    when "invitations"
      @families = Family.all(:order => :name, :include => :people)
    when "a-list"
      @families = Family.all(:order => :name, :include => :people, :conditions => "families.list = 'A List'")
    when "b-list"
      @families = Family.all(:order => :name, :include => :people, :conditions => "families.list = 'B List'")
    else
      @families = []
    end
  end
  
  def show
    @family = Family.find(params[:id])
    redirect_to edit_family_path(@family)
  end
  
  def new
    @family = Family.new
    @person = @family.people.build
  end
  
  def create
    @family = Family.new(params[:family])
    if @family.save
      flash[:notice] = "Successfully created family."
      redirect_to @family
    else
      render :action => 'new'
    end
  end
  
  def edit
    @family = Family.find(params[:id])
  end
  
  def update
    @family = Family.find(params[:id])
    if @family.update_attributes(params[:family])
      flash[:notice] = "Successfully updated family."
      redirect_to @family
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @family = Family.find(params[:id])
    @family.destroy
    flash[:notice] = "Successfully destroyed family."
    redirect_to families_url
  end
end
