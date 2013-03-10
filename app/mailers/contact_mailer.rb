class ContactMailer < ActionMailer::Base

  def notification(contact)
    @contact = contact
    attachments[contact.file.original_filename] = File.read contact.file.tempfile
    subject = "Contato Site"
    mail(:to => "contato@scaladb.com.br", :subject => subject, :from => "#{@contact.name} <#{@contact.email}>") do |format|
      format.text { render "notification" }
      format.html { render "notification", :layout => "email" }
    end
  end

end