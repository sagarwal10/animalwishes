class SanctuaryMailerJob
  include SuckerPunch::Job
  require 'animalwishes_mailer' 

  def perform(donor_email, animal_name, species, amount, 
              sanctuary_email)
    AnimalwishesMailer.sanctuary_donation_email(donor_email, animal_name, 
						species, amount,
                                 		sanctuary_email).deliver_now
  end
end
