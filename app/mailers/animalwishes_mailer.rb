class AnimalwishesMailer < ApplicationMailer
    default from: 'animalwishesmail@gmail.com'

    def donor_appreciation_email(donor_email, animal_name, amount, 
				 sanctuary_email, sanctuary_name)
	@name=animal_name
	@amount=amount
	@sanctuary_email=sanctuary_email
	@sanctuary_name=sanctuary_name
        mail(to: donor_email, subject: 'Thank You for your donation')
    end

    def sanctuary_donation_email(donor_email, animal_name, species, amount, 
				 sanctuary_email)
	@name=animal_name
        @species=species
	@amount=amount
	@donor_email=donor_email
	if (ENV['PAYPAL_MODE'] == 'sandbox')
            mail(to: ENV['TEST_EMAIL'],  subject: 'Test: You have received a new donation')
        else   
            mail(to: sanctuary_email, cc: ENV['AWISHES_EMAIL'], subject: 'You have received a new donation')
	end
    end

    def contact_form_email(email_address, name, message)
	@name=name
	@email_address=email_address
	@message=message
	mail(to: ENV['AWISHES_EMAIL'], from: email_address,
	     subject: 'You have received a contact request on animalwishes.org')
    end
end
