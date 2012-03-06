class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :ctg
      t.integer :region
      t.integer :card
      t.references :user

      t.timestamps
    end
  end
end
