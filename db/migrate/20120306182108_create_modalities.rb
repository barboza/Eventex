class CreateModalities < ActiveRecord::Migration
  def change
    create_table :modalities do |t|
      t.string :name
      t.text :description
      t.integer :participants
      t.references :event

      t.timestamps
    end
    add_index :modalities, :event_id
  end
end
