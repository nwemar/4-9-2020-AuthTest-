class StudentController < ApplicationController
  before_action :authenticate_admin!
  load_and_authorize_resource 
  def index
  end
end
