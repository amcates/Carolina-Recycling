class ContactsController < ApplicationController
  def create
    @contact = Contact.create params[:contact]
    redirect_to contacts_path
  end
end
