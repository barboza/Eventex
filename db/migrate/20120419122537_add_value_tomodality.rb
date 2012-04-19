class AddValueTomodality < ActiveRecord::Migration
  def change
    add_column :modalities, :value, :float, :default => 0
  end
end
