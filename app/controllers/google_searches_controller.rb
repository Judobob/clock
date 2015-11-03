class GoogleSearchesController < ApplicationController
  before_action :set_google_search, only: [:show, :edit, :update, :destroy]

  # GET /google_searches
  # GET /google_searches.json
  def index
    @google_searches = GoogleSearch.all
  end

  # GET /google_searches/1
  # GET /google_searches/1.json
  def show
  end

  # GET /google_searches/new
  def new
    @google_search = GoogleSearch.new
  end

  # GET /google_searches/1/edit
  def edit
  end

  # POST /google_searches
  # POST /google_searches.json
  def create
    @google_search = GoogleSearch.new(google_search_params)

    respond_to do |format|
      if @google_search.save
        format.html { redirect_to @google_search, notice: 'Google search was successfully created.' }
        format.json { render :show, status: :created, location: @google_search }
      else
        format.html { render :new }
        format.json { render json: @google_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /google_searches/1
  # PATCH/PUT /google_searches/1.json
  def update
    respond_to do |format|
      if @google_search.update(google_search_params)
        format.html { redirect_to @google_search, notice: 'Google search was successfully updated.' }
        format.json { render :show, status: :ok, location: @google_search }
      else
        format.html { render :edit }
        format.json { render json: @google_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /google_searches/1
  # DELETE /google_searches/1.json
  def destroy
    @google_search.destroy
    respond_to do |format|
      format.html { redirect_to google_searches_url, notice: 'Google search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_google_search
      @google_search = GoogleSearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def google_search_params
      params.require(:google_search).permit(:user_id, :search, :result, :user_id, :ip_address)
    end
end
