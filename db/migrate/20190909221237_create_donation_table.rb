class CreateDonationTable < ActiveRecord::Migration[5.0]
  def change
    create_table :donations  do |t|
      t.integer :charity_id
      t.integer :donor_id
    end

  end
end
