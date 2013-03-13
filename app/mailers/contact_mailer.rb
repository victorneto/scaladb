class ContactMailer < ActionMailer::Base

  def notification(contact)
    @contact = contact
    add_attachments_for(contact)
    subject = "Contato Site"
    mail(:to => destination, :subject => subject, :from => "#{@contact.name} <#{@contact.email}>") do |format|
      format.text { render "notification" }
      format.html { render "notification", :layout => "email" }
    end
  end
  
  private
  
  def destination
    Rails.env.production? ? "contato@scaladb.com.br" : "pedro.assumpcao@gmail.com"
  end
  
  def add_attachments_for(contact)
    attachments[contact.file.original_filename] = File.read contact.file.tempfile if contact.file
    attachments[contact.file2.original_filename] = File.read contact.file2.tempfile if contact.file2
    attachments[contact.file3.original_filename] = File.read contact.file3.tempfile if contact.file3
  end

end