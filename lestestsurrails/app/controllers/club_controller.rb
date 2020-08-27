class ClubController < ApplicationController
	def club
		@user = User.all
	end
end