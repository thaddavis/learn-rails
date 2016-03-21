class UserMailer < ApplicationMailer
  default from: "do-not-reply@example.com"

  def contact_email(contact)
     @contact = contact

     Rails.logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@"
     Rails.logger.debug "#{Rails.application.secrets.owner_email}"
     Rails.logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@"

     mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website")
  end
end
