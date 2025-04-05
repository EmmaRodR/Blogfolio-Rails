class Users::SessionsController < Devise::SessionsController
  def destroy
    super do
      flash[:notice] = "¡Has cerrado sesión exitosamente! ¡Vuelve pronto! 👋"
    end
  end
end