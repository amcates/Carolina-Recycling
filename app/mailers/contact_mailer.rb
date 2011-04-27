class ContactMailer < ActionMailer::Base
  default :from => "contact@carolinarecyclingcompany.com"

  def send_contact(contact)
    @contact = contact
    mail(:to => ['caleb@carolinarecyclingcompany.com', 'Natalie@carolinarecyclingcompany.com', 'info@carolinarecyclingcompany.com'], :subject => "Website Contact Request")
  end
end
