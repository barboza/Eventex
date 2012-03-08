class Registration < ActiveRecord::Base
  belongs_to :modality
	has_and_belongs_to_many :participants
	accepts_nested_attributes_for :participants

	validates_associated :modality

end
