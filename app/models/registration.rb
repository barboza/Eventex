class Registration < ActiveRecord::Base
  belongs_to :user
  has_many :appointments
	has_many :participants, :through => :appointments
end
