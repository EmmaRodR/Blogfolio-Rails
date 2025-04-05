class ContactMailer < ApplicationMailer
  default from: ENV["EMAIL_USER"] # Usa el mismo correo configurado

  def contact_email(contact_form)
    @name = contact_form[:name]
    @message = contact_form[:message]
    @email = contact_form[:email]

    recipient_email = ENV["EMAIL_USER"]

    mail(to: recipient_email, subject: "Nuevo mensaje de contacto")

  end


end
