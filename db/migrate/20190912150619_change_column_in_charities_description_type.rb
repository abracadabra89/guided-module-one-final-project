class ChangeColumnInCharitiesDescriptionType < ActiveRecord::Migration[5.0]
  def change
    change_column(:charities, :description, :string) 
  end
end
