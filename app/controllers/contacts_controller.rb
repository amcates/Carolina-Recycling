class ContactsController < ApplicationController
  def create
    @contact = Contact.new params[:contact]
    if @contact.save
      ContactMailer.send_contact(@contact).deliver
      redirect_to contacts_path
    else
      render :action => 'contact', :controller => 'pages'
    end
  end
end
