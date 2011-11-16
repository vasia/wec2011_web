class Participant < ActiveRecord::Base
	validates :name, :presence =>  {:message => "is blank!"}
	validates :surname, :presence =>   {:message => "is blank!"}
	validates :email, :presence =>   {:message => "is blank!"}
	validates :studies, :presence =>   {:message => "is blank!"}
	validates :year_of_studies, :presence =>   {:message => "is blank!"}
	validates :terms,  :acceptance => { :accept => 1, :message => "must be accepted!"}
end

	
