class ChangeColumnFormatOnCharities < ActiveRecord::Migration[5.0]
  def up
    change_column(:charities, :description, :text) 
  end

  def down
    change_column(:charities, :description, :text) 
  end
end
