class AddColumnAmountToDonation < ActiveRecord::Migration[5.0]
  def change
    add_column(:donations, :amount, :integer) 
  end
end
