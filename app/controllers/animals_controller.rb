class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :purchase, :edit, :update, :destroy]
  before_action :check_logged_in, only: [:new, :edit]

  # GET /animals
  # GET /animals.json
  def index
    @filter_param = params[:species];
    if (params[:species] == nil) 
        @animals = Animal.all
    else
        @animals = Animal.where("species = ?", params[:species]) 
    end
    @species = Animal.select("species").distinct
    @carousel_caption = "<h3>Discover the stories and unique personalities of rescued Animals and Support them</h3>
        <p>100% of your donation goes to the Animals and their Sanctuaries</p>"
  end

  # GET /animals/1
  # GET /animals/1.json
  def show
     @organization = Organization.find(@animal.organization_id);
     if admin_signed_in? && (@animal.organization_id == current_admin.organization_id ||
			     current_admin.superUser == true)
         @display_edit_link = 1
     end 
  end

  # GET /animals/new
  def new
    @animal = Animal.new
    set_possible_organizations
  end

  # GET /animals/1/edit
  def edit
    
    if current_admin.superUser == false &&
       @animal.organization_id != nil && 
       @animal.organization_id != current_admin.organization_id
          flash[:error] = "You are not an admin for this animal's sanctuary"
          redirect_to edit_admin_registration_path
    end
    set_possible_organizations
  end

  # POST /animals
  # POST /animals.json
  def create
    @animal = Animal.new(animal_params)

    respond_to do |format|
      if @animal.save
        format.html { redirect_to @animal, notice: 'Animal was successfully created.' }
        format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animals/1
  # PATCH/PUT /animals/1.json
  def update
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to @animal, notice: 'Animal was successfully updated.' }
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animals/1
  # DELETE /animals/1.json
  def destroy
    @animal.destroy
    respond_to do |format|
      format.html { redirect_to animals_url, notice: 'Animal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def purchase
    logger.info("User has input: #{params[:amount]}")
    if params[:amount] == "0" || params[:amount] == ""
        logger.info("Invalid input")
        @errors = "Please enter a dollar amount"
        redirect_to @animal
    else 
        logger.info("Valid input")
    end
    require 'paypal-sdk-adaptivepayments'
    PayPal::SDK.configure(
       :mode      => "sandbox",  # Set "live" for production
       :app_id    => "APP-80W284485P519543T",
       :username  => "sagarwal10-facilitator_api1.hotmail.com",
       :password  => "88FUBVZLK8K6H42K",
       :signature => "An5ns1Kso7MWUdW4ErQKJJJ4qi4-AEI.FvtOcPMLhsRn.1dCD3n01X.1" )

       @api = PayPal::SDK::AdaptivePayments.new

@pay = @api.build_pay({
  :actionType => "PAY",
  :cancelUrl => animal_url(@animal),
  :currencyCode => "USD",
  :feesPayer => "EACHRECEIVER",
  :ipnNotificationUrl => "http://localhost:3000/samples/adaptive_payments/ipn_notify",
  :receiverList => {
    :receiver => [{
      :amount => params[:amount],
      :email => "animal-sanctuary-1@gmail.com" }] },
  :returnUrl => animal_url(@animal) })

# Make API call & get response
@response = @api.pay(@pay)

# Access response
if @response.success? && @response.payment_exec_status != "ERROR"
  @response.payKey
  redirect_to @api.payment_url(@response)  # Url to complete payment
else
  @response.error[0].message
end
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      @animal = Animal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_params
      params.require(:animal).permit(:name, :species, :summary, :fullDescription, :amount, :amountRaised, :picture, :organization_id)
    end

    def set_possible_organizations
       if current_admin.superUser == true
           @organizations = Organization.all
       else
           @organizations = (Array.new).push(Organization.find(current_admin.organization_id))
           @animal.organization_id = current_admin.organization_id
       end
    end 

    def check_logged_in
        unless admin_signed_in?
           flash[:error] = "You need to be logged in to add an animal"
	   redirect_to new_admin_session_path
	end
    end
end	
