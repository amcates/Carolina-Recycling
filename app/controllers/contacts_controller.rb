class ContactsController < ApplicationController
  def create
    @contact = Contact.create params[:contact]
    ContactMailer.send_contact(@contact).deliver
    redirect_to contacts_path
  end
end
