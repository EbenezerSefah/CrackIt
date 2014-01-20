class HomeController < ApplicationController
	before_action :check_logged_in, except: [:login]

	def login
	end

	def dashboard
	end

	private
	def check_logged_in
		if current_user.nil?
			redirect_to login_home_index_path
		end
	end
end
