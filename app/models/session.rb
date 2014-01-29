class Session < ActiveRecord::Base
	belongs_to :user, foreign_key: "creator_id"
	has_many :codes
	has_many :videos
	has_many :personal_notes

	def self.creator
		User.find(self.creator_id)
	end
end
