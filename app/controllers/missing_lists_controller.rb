class MissingListsController < ApplicationController
  before_action :set_missing_list, only: [:show, :edit, :update, :destroy]

  # GET /missing_lists
  # GET /missing_lists.json
  def index
    @missing_lists = MissingList.all
  end

  # GET /missing_lists/1
  # GET /missing_lists/1.json
  def show
  end

  # GET /missing_lists/new
  def new
    @missing_list = MissingList.new
  end

  # GET /missing_lists/1/edit
  def edit
  end

  # POST /missing_lists
  # POST /missing_lists.json
  def create
    @missing_list = MissingList.new(missing_list_params)

    respond_to do |format|
      if @missing_list.save
        format.html { redirect_to @missing_list, notice: 'Missing list was successfully created.' }
        format.json { render :show, status: :created, location: @missing_list }
      else
        format.html { render :new }
        format.json { render json: @missing_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /missing_lists/1
  # PATCH/PUT /missing_lists/1.json
  def update
    respond_to do |format|
      if @missing_list.update(missing_list_params)
        format.html { redirect_to @missing_list, notice: 'Missing list was successfully updated.' }
        format.json { render :show, status: :ok, location: @missing_list }
      else
        format.html { render :edit }
        format.json { render json: @missing_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /missing_lists/1
  # DELETE /missing_lists/1.json
  def destroy
    @missing_list.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Missing list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_missing_list
      @missing_list = MissingList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def missing_list_params
      params.require(:missing_list).permit(:title, :description)
    end
end
