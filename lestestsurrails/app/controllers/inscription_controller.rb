class InscriptionController < ApplicationController
	def new
		@user = User.new
	end

	def create
		user = User.create(user_params)
		redirect_to acceuil_path
	end
	private

		def user_params
			params.require(:user).permit(:nom, :prenom, :email ,:password)
		end
end