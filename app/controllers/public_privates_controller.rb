class PublicPrivatesController < ApplicationController
  before_action :set_public_private, only: [:show, :edit, :update, :destroy]

  # GET /public_privates
  # GET /public_privates.json
  def index
    @public_privates = PublicPrivate.all
  end

  # GET /public_privates/1
  # GET /public_privates/1.json
  def show
  end

  # GET /public_privates/new
  def new
    @public_private = PublicPrivate.new
  end

  # GET /public_privates/1/edit
  def edit
  end

  # POST /public_privates
  # POST /public_privates.json
  def create
    @public_private = PublicPrivate.new(public_private_params)

    respond_to do |format|
      if @public_private.save
        format.html { redirect_to @public_private, notice: 'Public private was successfully created.' }
        format.json { render :show, status: :created, location: @public_private }
      else
        format.html { render :new }
        format.json { render json: @public_private.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_privates/1
  # PATCH/PUT /public_privates/1.json
  def update
    respond_to do |format|
      if @public_private.update(public_private_params)
        format.html { redirect_to @public_private, notice: 'Public private was successfully updated.' }
        format.json { render :show, status: :ok, location: @public_private }
      else
        format.html { render :edit }
        format.json { render json: @public_private.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_privates/1
  # DELETE /public_privates/1.json
  def destroy
    @public_private.destroy
    respond_to do |format|
      format.html { redirect_to public_privates_url, notice: 'Public private was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_private
      @public_private = PublicPrivate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_private_params
      params.require(:public_private).permit(:private_key, :public_key, :message_id)
    end
end
