class CustomerhomesController < ApplicationController
  before_action :set_customerhome, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_customer!
  # GET /customerhomes
  # GET /customerhomes.json
  def index
    @customerhomes = Customerhome.all
  end

  # GET /customerhomes/1
  # GET /customerhomes/1.json
  def show
  end

  # GET /customerhomes/new
  def new
    @customerhome = Customerhome.new
  end

  # GET /customerhomes/1/edit
  def edit
  end

  # POST /customerhomes
  # POST /customerhomes.json
  def create
    @customerhome = Customerhome.new(customerhome_params)

    respond_to do |format|
      if @customerhome.save
        format.html { redirect_to @customerhome, notice: 'Customerhome was successfully created.' }
        format.json { render :show, status: :created, location: @customerhome }
      else
        format.html { render :new }
        format.json { render json: @customerhome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customerhomes/1
  # PATCH/PUT /customerhomes/1.json
  def update
    respond_to do |format|
      if @customerhome.update(customerhome_params)
        format.html { redirect_to @customerhome, notice: 'Customerhome was successfully updated.' }
        format.json { render :show, status: :ok, location: @customerhome }
      else
        format.html { render :edit }
        format.json { render json: @customerhome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customerhomes/1
  # DELETE /customerhomes/1.json
  def destroy
    @customerhome.destroy
    respond_to do |format|
      format.html { redirect_to customerhomes_url, notice: 'Customerhome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customerhome
      @customerhome = Customerhome.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customerhome_params
      params.fetch(:customerhome, {})
    end
end
