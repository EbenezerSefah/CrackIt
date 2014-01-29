class HomeController < ApplicationController
	before_action :check_logged_in, except: [:login]

	def login
	end

	def dashboard
		sess = Session.where(:creator_id => current_user.id )
		@old_sesh = sess.select {|one| one.time < Time.now}
		@new_sesh = sess.select {|one| one.time > Time.now}
	end


	private
	def check_logged_in
		if current_user.nil?
			redirect_to login_home_index_path
		end
	end
end
