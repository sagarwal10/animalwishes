class DonorMailerJob 
  include SuckerPunch::Job
  require 'animalwishes_mailer'
 
  def perform(donor_email, animal_name, amount, 
              sanctuary_email, sanctuary_name)
    AnimalwishesMailer.donor_appreciation_email(donor_email, animal_name, 
						amount,
                                 		sanctuary_email, 
						sanctuary_name).deliver_now
  end
end
