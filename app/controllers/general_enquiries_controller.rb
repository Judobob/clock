class GeneralEnquiriesController < ApplicationController
  before_action :set_general_enquiry, only: [:show, :edit, :update, :destroy]

  # GET /general_enquiries
  # GET /general_enquiries.json
  def index
    @general_enquiries = GeneralEnquiry.all
  end

  # GET /general_enquiries/1
  # GET /general_enquiries/1.json
  def show
  end

  # GET /general_enquiries/new
  def new
    @general_enquiry = GeneralEnquiry.new
  end

  # GET /general_enquiries/1/edit
  def edit
  end

  # POST /general_enquiries
  # POST /general_enquiries.json
  def create
    @general_enquiry = GeneralEnquiry.new(general_enquiry_params)

    respond_to do |format|
      if @general_enquiry.save
        format.json { msg = { :status => "ok", :message => "Success!", :html => "<b>...</b>" }
    format.json  { render :json => msg } }
      else
        format.json { render json: @general_enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /general_enquiries/1
  # PATCH/PUT /general_enquiries/1.json
  def update
    respond_to do |format|
      if @general_enquiry.update(general_enquiry_params)
        format.html { redirect_to @general_enquiry, notice: 'General enquiry was successfully updated.' }
        format.json { render :show, status: :ok, location: @general_enquiry }
      else
        format.html { render :edit }
        format.json { render json: @general_enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_enquiries/1
  # DELETE /general_enquiries/1.json
  def destroy
    @general_enquiry.destroy
    respond_to do |format|
      format.html { redirect_to general_enquiries_url, notice: 'General enquiry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general_enquiry
      @general_enquiry = GeneralEnquiry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_enquiry_params
      params.require(:general_enquiry).permit(:email, :message)
    end
end
