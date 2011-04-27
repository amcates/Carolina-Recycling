class ContactMailer < ActionMailer::Base
  default :from => "contact@carolinarecyclingcompany.com"

  def send_contact(contact)
    @contact = contact
    mail(:to => ['amcates@gmail.com'], :subject => "Website Contact Request")
  end
end
