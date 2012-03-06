class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.references :user

      t.timestamps
    end
    add_index :registrations, :user_id
  end
end
