class RegistrationsController < Devise::RegistrationsController
    def sign_up_params
      params.require(:user).permit(:email, :nome, :telefone, :peso, :altura,:password, :password_confirmation)
    end
end
