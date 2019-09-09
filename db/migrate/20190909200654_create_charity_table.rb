
class CreateCharityTable < ActiveRecord::Migration[5.0]
  def change
      create_table :charities  do |t|
          t.string :name
          t.string :location
          t.integer :founding_year
      end
  end
end
