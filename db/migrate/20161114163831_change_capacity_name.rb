class ChangeCapacityName < ActiveRecord::Migration[5.0]
  def change
    rename_column :reservations, :capacity, :party_size
  end
end
