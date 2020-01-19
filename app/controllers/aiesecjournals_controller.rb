class AiesecjournalsController < ApplicationController
  before_action :set_aiesecjournal, only: [:show, :edit, :update, :destroy]

  # GET /aiesecjournals
  # GET /aiesecjournals.json
  def index
    @aiesecjournals = Aiesecjournal.all
  end

  # GET /aiesecjournals/1
  # GET /aiesecjournals/1.json
  def show
  end

  # GET /aiesecjournals/new
  def new
    @aiesecjournal = Aiesecjournal.new
  end

  # GET /aiesecjournals/1/edit
  def edit
  end

  # POST /aiesecjournals
  # POST /aiesecjournals.json
  def create
    @aiesecjournal = Aiesecjournal.new(aiesecjournal_params)

    respond_to do |format|
      if @aiesecjournal.save
        format.html { redirect_to @aiesecjournal, notice: 'Aiesecjournal was successfully created.' }
        format.json { render :show, status: :created, location: @aiesecjournal }
      else
        format.html { render :new }
        format.json { render json: @aiesecjournal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aiesecjournals/1
  # PATCH/PUT /aiesecjournals/1.json
  def update
    respond_to do |format|
      if @aiesecjournal.update(aiesecjournal_params)
        format.html { redirect_to @aiesecjournal, notice: 'Aiesecjournal was successfully updated.' }
        format.json { render :show, status: :ok, location: @aiesecjournal }
      else
        format.html { render :edit }
        format.json { render json: @aiesecjournal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aiesecjournals/1
  # DELETE /aiesecjournals/1.json
  def destroy
    @aiesecjournal.destroy
    respond_to do |format|
      format.html { redirect_to aiesecjournals_url, notice: 'Aiesecjournal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aiesecjournal
      @aiesecjournal = Aiesecjournal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aiesecjournal_params
      params.require(:aiesecjournal).permit(:event, :goal, :successstory, :failurestory, :note)
    end
end
