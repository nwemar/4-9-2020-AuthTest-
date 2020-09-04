class AdminhomesController < ApplicationController  
  before_action :authenticate_admin!
 
  def index  	
    @adminhomes = Adminhome.all
  end
 
  
  def new
    @adminhome = Adminhome.new
    authorize! :new, @adminhome
  end
end
