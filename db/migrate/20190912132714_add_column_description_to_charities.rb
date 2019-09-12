class AddColumnDescriptionToCharities < ActiveRecord::Migration[5.0]
  def change
    add_column(:charities, :description, :text) 
    
  end
end
