class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new params[:contact]
    if @contact.valid?
      ContactMailer.notification(@contact).deliver
      render "success"
    else
      render "new"
    end
  end

end