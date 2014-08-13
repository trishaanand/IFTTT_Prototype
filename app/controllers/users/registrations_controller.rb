class Users::RegistrationsController < Devise::RegistrationsController
    before_filter :update_sanitized_params, if: :devise_controller?

    def update_sanitized_params
       devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :email, :phone)}
       devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:phone,:email, :password) }
    end
end