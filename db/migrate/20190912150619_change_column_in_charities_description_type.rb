class ChangeColumnInCharitiesDescriptionType < ActiveRecord::Migration[5.0]
  def up
    change_column(:charities, :description, :string) 
  end

  def down
    change_column(:charities, :description, :text)
  end
end
