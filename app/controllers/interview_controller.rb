class InterviewController < ApplicationController
	def setup
		@session = Session.find(params["data"]["id"])
	end

	def room
	end

	def save_interview
		@session = Session.find(params["sesh_id"])
		@session.codes.create(:code_text => params["code"])
		@session.personal_notes.create(:note => params["note"])
		render :nothing => true
	end
end
