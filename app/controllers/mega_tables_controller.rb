class MegaTablesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_mega_table, only: [:show, :edit, :update, :destroy]

  # GET /mega_tables
  # GET /mega_tables.json
  def index
    @mega_tables = MegaTable.all
  end

  # GET /mega_tables/1
  # GET /mega_tables/1.json
  def show
  end

  # GET /mega_tables/new
  def new
    @mega_table = MegaTable.new
  end

  # GET /mega_tables/1/edit
  def edit
  end

  # POST /mega_tables
  # POST /mega_tables.json
  def create
    @mega_table = MegaTable.new(mega_table_params)

    respond_to do |format|
      if @mega_table.save
        format.html { redirect_to @mega_table, notice: 'Mega table was successfully created.' }
        format.json { render :show, status: :created, location: @mega_table }
      else
        format.html { render :new }
        format.json { render json: @mega_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mega_tables/1
  # PATCH/PUT /mega_tables/1.json
  def update
    respond_to do |format|
      if @mega_table.update(mega_table_params)
        format.html { redirect_to @mega_table, notice: 'Mega table was successfully updated.' }
        format.json { render :show, status: :ok, location: @mega_table }
      else
        format.html { render :edit }
        format.json { render json: @mega_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mega_tables/1
  # DELETE /mega_tables/1.json
  def destroy
    @mega_table.destroy
    respond_to do |format|
      format.html { redirect_to mega_tables_url, notice: 'Mega table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mega_table
      @mega_table = MegaTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mega_table_params
      params.require(:mega_table).permit(:name)
    end
end
