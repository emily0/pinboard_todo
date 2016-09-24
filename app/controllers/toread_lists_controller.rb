class ToreadListsController < ApplicationController
  before_action :set_toread_list, only: [:show, :edit, :update, :destroy]

  # GET /toread_lists
  # GET /toread_lists.json
  def index
    @toread_lists = ToreadList.all
  end

  # GET /toread_lists/1
  # GET /toread_lists/1.json
  def show
  end

  # GET /toread_lists/new
  def new
    @toread_list = ToreadList.new
  end

  # GET /toread_lists/1/edit
  def edit
  end

  # POST /toread_lists
  # POST /toread_lists.json
  def create
    @toread_list = ToreadList.new(toread_list_params)

    respond_to do |format|
      if @toread_list.save
        format.html { redirect_to @toread_list, notice: 'Toread list was successfully created.' }
        format.json { render :show, status: :created, location: @toread_list }
      else
        format.html { render :new }
        format.json { render json: @toread_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toread_lists/1
  # PATCH/PUT /toread_lists/1.json
  def update
    respond_to do |format|
      if @toread_list.update(toread_list_params)
        format.html { redirect_to @toread_list, notice: 'Toread list was successfully updated.' }
        format.json { render :show, status: :ok, location: @toread_list }
      else
        format.html { render :edit }
        format.json { render json: @toread_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toread_lists/1
  # DELETE /toread_lists/1.json
  def destroy
    @toread_list.destroy
    respond_to do |format|
      format.html { redirect_to toread_lists_url, notice: 'Toread list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toread_list
      @toread_list = ToreadList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toread_list_params
      params.require(:toread_list).permit(:title)
    end
end
