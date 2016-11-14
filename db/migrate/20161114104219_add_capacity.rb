class AddCapacity < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :capacity, :integer
  end
end
