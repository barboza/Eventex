class CreateParticipantsRegistrations < ActiveRecord::Migration
  def change
  	create_table :participants_registrations, :id => false do |t|
  		t.references :registration
  		t.references :participant
  	end
  end
end
