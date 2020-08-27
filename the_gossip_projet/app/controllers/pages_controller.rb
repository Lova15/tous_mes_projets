class PagesController < ApplicationController
	def home
	end
	def team
		@author = Author.all
	end
	def contact
		@author = Author.all
	end
	def eric
		@author = Author.find(1)
	end
	def bienvenue
		@name = params[:name]
	end
end