class Modality < ActiveRecord::Base
  belongs_to :event

  validates_presence_of :name
  validates_presence_of :participants
  validates_associated :event
end
