class ContactsController < ApplicationController
  before_filter :load_options

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

  private

  def load_options
    @area_options = Contact.area_options
    @service_type_options = Contact.service_type_options
    @state_options = Contact.state_options
  end

end