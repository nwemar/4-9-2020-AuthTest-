class SupervisorController < ApplicationController
	before_action :authenticate_admin!
    load_and_authorize_resource 

  def index
  	@supervisor = Supervisor.all 
  end
end
