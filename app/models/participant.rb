class Participant < ActiveRecord::Base
	belongs_to :user
	has_many :appointments
	has_many :registrations, :through => :appointments
end
