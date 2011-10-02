class PagesController < ApplicationController
	def home
		@title = "Home"
		@header = "What is the BEST WEC?"
		render 'index'
	end

	def agenda
		@title = "Agenda"
		@header = "Agenda"
		render 'agenda'
	end

	def location
		@title = "Location"
		@header = "Location"
		render 'location'	
	end

	def about_us
		@title = "About Us"
		@header = "About Us"
		render 'about_us'
	end

	def gallery
		@title = "Gallery"
		@header = "Gallery"
		render 'gallery'
	end

	def career_support
		@title = "Career Support"
		@header = "Career Support"
		render 'career_support'
	end

	def faq
		@title = "Frequently Asked Questions"
		@header = "Frequently Asked Questions"
		render 'faq'
	end
	
	def companies
		@title = "Companies"
		@header = "Companies"
		render 'companies'
	end
end
