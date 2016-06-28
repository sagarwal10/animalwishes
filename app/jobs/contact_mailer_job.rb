class ContactMailerJob 
  include SuckerPunch::Job
  require 'animalwishes_mailer'
 
  def perform(email, name, message)
    AnimalwishesMailer.contact_form_email(email, name, message).deliver_now
  end
end
