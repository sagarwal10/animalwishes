class AnimalwishesMailer < ApplicationMailer
    default from: 'animalwishesmail@gmail.com'

    def donor_appreciation_email(donor_email, animal_name, amount, 
				 sanctuary_name, sanctuary_email)
	@name=animal_name
	@amount=amount
	@sanctuary_email=sanctuary_email
	@sanctuary_name=sanctuary_name
        mail(to: donor_email, subject: 'Thank You for your donation')
    end

    def sanctuary_donation_email(donor_email, animal_name, amount, 
				 sanctuary_email)
	@name=animal_name
	@amount=amount
	@donor_email=donor_email
        mail(to: sanctuary_email, subject: 'You have received a new donation')
    end

    def contact_form_email(email_address, name, message)
	@name=name
	@email_address=email_address
	@message=message
	mail(to: "animalwishesmail@gmail.com", from: email_address,
	     subject: 'You have received a contact request on animalwishes.org')
    end
end
