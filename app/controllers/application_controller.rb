class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # サインアップ時、devise初期設定に追加したカラムを記載
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :sub_last_name, :sub_first_name, :course_id])
  end
end
