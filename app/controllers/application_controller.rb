class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	# ログアウト後に遷移するpathを設定
	def after_sign_out_path_for(resource)
    	new_student_session_path
	end

	protected
	# サインアップ時、devise初期設定に追加したカラムを記載
	def configure_permitted_parameters
  		devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :sub_last_name, :sub_first_name])
	end
end
