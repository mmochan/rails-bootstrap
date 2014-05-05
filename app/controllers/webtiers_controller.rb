class WebtiersController < ApplicationController
  before_action :set_webtier, only: [:show, :edit, :update, :destroy]

  # GET /webtiers
  # GET /webtiers.json
  def index
    @webtiers = Webtier.all
  end

  # GET /webtiers/1
  # GET /webtiers/1.json
  def show
  end

  # GET /webtiers/new
  def new
    @webtier = Webtier.new
  end

  # GET /webtiers/1/edit
  def edit
  end

  # POST /webtiers
  # POST /webtiers.json
  def create
    @webtier = Webtier.new(webtier_params)

    respond_to do |format|
      if @webtier.save
        format.html { redirect_to @webtier, notice: 'webtier was successfully created.' }
        format.json { render :show, status: :created, location: @webtier }
      else
        format.html { render :new }
        format.json { render json: @webtier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webtiers/1
  # PATCH/PUT /webtiers/1.json
  def update
    respond_to do |format|
      if @webtier.update(webtier_params)
        format.html { redirect_to @webtier, notice: 'webtier was successfully updated.' }
        format.json { render :show, status: :ok, location: @webtier }
      else
        format.html { render :edit }
        format.json { render json: @webtier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webtiers/1
  # DELETE /webtiers/1.json
  def destroy
    @webtier.destroy
    respond_to do |format|
      format.html { redirect_to webtiers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webtier
      @webtier = Webtier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def webtier_params
      params.require(:webtier).permit(:name, :link, :description)
    end
end
