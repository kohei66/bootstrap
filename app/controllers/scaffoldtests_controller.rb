class ScaffoldtestsController < ApplicationController
  before_action :set_scaffoldtest, only: [:show, :edit, :update, :destroy]

  # GET /scaffoldtests
  # GET /scaffoldtests.json
  def index
    @scaffoldtests = Scaffoldtest.all
  end

  # GET /scaffoldtests/1
  # GET /scaffoldtests/1.json
  def show
  end

  # GET /scaffoldtests/new
  def new
    @scaffoldtest = Scaffoldtest.new
  end

  # GET /scaffoldtests/1/edit
  def edit
  end

  # POST /scaffoldtests
  # POST /scaffoldtests.json
  def create
    @scaffoldtest = Scaffoldtest.new(scaffoldtest_params)

    respond_to do |format|
      if @scaffoldtest.save
        format.html { redirect_to @scaffoldtest, notice: 'Scaffoldtest was successfully created.' }
        format.json { render :show, status: :created, location: @scaffoldtest }
      else
        format.html { render :new }
        format.json { render json: @scaffoldtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scaffoldtests/1
  # PATCH/PUT /scaffoldtests/1.json
  def update
    respond_to do |format|
      if @scaffoldtest.update(scaffoldtest_params)
        format.html { redirect_to @scaffoldtest, notice: 'Scaffoldtest was successfully updated.' }
        format.json { render :show, status: :ok, location: @scaffoldtest }
      else
        format.html { render :edit }
        format.json { render json: @scaffoldtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffoldtests/1
  # DELETE /scaffoldtests/1.json
  def destroy
    @scaffoldtest.destroy
    respond_to do |format|
      format.html { redirect_to scaffoldtests_url, notice: 'Scaffoldtest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scaffoldtest
      @scaffoldtest = Scaffoldtest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scaffoldtest_params
      params.require(:scaffoldtest).permit(:content)
    end
end
