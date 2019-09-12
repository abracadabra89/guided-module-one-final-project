class ChangeColumnFormatOnCharities < ActiveRecord::Migration[5.0]
  def change
    change_column(:charities, :description, :text) 
  end
end
