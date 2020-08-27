class ConnectController < ApplicationController
	def new
	end

	def create
		@email = params[:email]
		@mdp = params[:psw]
		@a = []
		@test = User.where(email: @email, password: @mdp)
			if @test.ids == @a
			redirect_to new_connect_path
		else
			$idu = @test.ids[0]
			redirect_to welcome_path
		end
	end
end