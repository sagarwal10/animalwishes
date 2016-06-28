class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy]
  before_action :check_superuser_privelege, only: [:new, :edit, :destroy] 

  # GET /organizations
  # GET /organizations.json
  def index
    @organizations = Organization.all
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
  end

  # GET /organizations/new
  def new
    @organization = Organization.new
  end

  # GET /organizations/1/edit
  def edit
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = Organization.new(organization_params)

    respond_to do |format|
      if @organization.save
        format.html { redirect_to @organization, notice: 'Organization was successfully created.' }
        format.json { render :show, status: :created, location: @organization }
      else
        format.html { render :new }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizations/1
  # PATCH/PUT /organizations/1.json
  def update
    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to @organization, notice: 'Organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization }
      else
        format.html { render :edit }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  def contact	
	if (verify_recaptcha == false)
	    @captcha_error = "You failed to verify that you're not a robot - please check the Captcha field in the form below and resubmit"
	    @email_content = params[:email]
	    @name_content = params[:name]
	    @message_content = params[:message]
	    render 'about' and return
	end

        ContactMailerJob.perform_async(
		ERB::Util.html_escape(params[:email]),
	        ERB::Util.html_escape(params[:name]),
		ERB::Util.html_escape(params[:message]))
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    # @organization.destroy
    respond_to do |format|
      format.html { redirect_to organizations_url, notice: 'Organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @signed_in = admin_signed_in?
      @organization = Organization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_params
      params.require(:organization).permit(:name, :about, :url, :logo, :paypalEmail, :contactEmail)
    end

    def check_superuser_privelege
      if admin_signed_in?
        if current_admin.superUser == false
           flash[:error] = "You need superuser priveleges for that"
           redirect_to edit_admin_registration_path
	end
      else 
        redirect_to new_admin_session_path
      end
    end 


end
