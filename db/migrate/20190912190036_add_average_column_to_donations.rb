class AddAverageColumnToDonations < ActiveRecord::Migration[5.0]
  def change
    add_column(:donations, :average, :integer)
  end
end
