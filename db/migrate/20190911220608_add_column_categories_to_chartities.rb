class AddColumnCategoriesToChartities < ActiveRecord::Migration[5.0]
  def change
    add_column(:charities, :category, :string)
  end
end
