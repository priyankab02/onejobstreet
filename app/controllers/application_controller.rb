class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :email, :password, :password_confirmation, :uid, :provider, :city, :current_location, :phone, :highest_education, :current_job_title, :employee_type, :total_experience_years, :total_experience_months, :desired_job_title, :job_type, :current_salary, :wiling_to_travel, :terms_and_conditions, :eligibility_for_uk])
  end

end
