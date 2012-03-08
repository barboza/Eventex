class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.references :modality
      t.timestamps
    end
    add_index :registrations, :user_id
  end
end
