class UserEnquiriesController < ApplicationController
  before_action :set_user_enquiry, only: [:show, :edit, :update, :destroy]

  # GET /user_enquiries
  # GET /user_enquiries.json
  def index
    @user_enquiries = UserEnquiry.all
  end

  # GET /user_enquiries/1
  # GET /user_enquiries/1.json
  def show
  end

  # GET /user_enquiries/new
  def new
    @user_enquiry = UserEnquiry.new
  end

  # GET /user_enquiries/1/edit
  def edit
  end

  # POST /user_enquiries
  # POST /user_enquiries.json
  def create
    @user_enquiry = UserEnquiry.new(user_enquiry_params)

    respond_to do |format|
      if @user_enquiry.save
        format.html { redirect_to @user_enquiry, notice: 'User enquiry was successfully created.' }
        format.json { render :show, status: :created, location: @user_enquiry }
      else
        format.html { render :new }
        format.json { render json: @user_enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_enquiries/1
  # PATCH/PUT /user_enquiries/1.json
  def update
    respond_to do |format|
      if @user_enquiry.update(user_enquiry_params)
        format.html { redirect_to @user_enquiry, notice: 'User enquiry was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_enquiry }
      else
        format.html { render :edit }
        format.json { render json: @user_enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_enquiries/1
  # DELETE /user_enquiries/1.json
  def destroy
    @user_enquiry.destroy
    respond_to do |format|
      format.html { redirect_to user_enquiries_url, notice: 'User enquiry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_enquiry
      @user_enquiry = UserEnquiry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_enquiry_params
      params.require(:user_enquiry).permit(:user_profile_id, :description)
    end
end
