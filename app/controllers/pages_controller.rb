class PagesController < ApplicationController
  def contact
    @contact = Contact.new
  end
end
