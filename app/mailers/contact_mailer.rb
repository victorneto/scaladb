class ContactMailer < ActionMailer::Base

  def notification(contact)
    @contact = contact
    subject = "Contato Site"
    mail(:to => "pedro.assumpcao@gmail.com", :subject => subject, :from => "#{@contact.name} <#{@contact.email}>") do |format|
      format.text { render "notification" }
      format.html { render "notification", :layout => "email" }
    end
  end

end