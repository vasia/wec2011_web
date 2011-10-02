class Participant < ActiveRecord::Base
	validates :name, :presence => true
	validates :surname, :presence => true
	validates :email, :presence => true
	validates :studies, :presence =>true
	validates :year_of_studies, :presence => true
end
