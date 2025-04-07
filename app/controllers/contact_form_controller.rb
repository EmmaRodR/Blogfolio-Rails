class ContactFormController < ApplicationController

  private

  def create
    begin
      contact_form = params.require(:contact_form).permit(:name, :email, :message)
      ContactMailer.contact_email(contact_form).deliver_now
    flash[:success] = "Your message has been sent successfully!"
    rescue StandardError => e
    Rails.logger.error "Error al enviar correo: #{e.message}"
    flash[:alert] = "Hubo un problema al enviar el mensaje. Intenta de nuevo más tarde."
    end
    
    redirect_to root_path

  end

end
