class AnimalwishesMailer < ApplicationMailer
    default from: 'animalwishesmail@gmail.com'

    def donation_confirmation_email(donor_email, name, amount, sanctuary_email)
	@name=name
	@amount=amount
	@sanctuary_email=sanctuary_email
        mail(to: donor_email, subject: 'Thank You for your donation')
    end

end
