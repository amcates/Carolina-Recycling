class ContactMailer < ActionMailer::Base
  def send_contact(contact)
    @contact = contact
    mail(:from => @contact.email, :to => ['caleb@carolinarecyclingcompany.com', 'natalie@carolinarecyclingcompany.com', 'info@carolinarecyclingcompany.com'], :subject => "Website Contact Request")
  end
end
