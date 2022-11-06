class AddAliasesToSeries < ActiveRecord::Migration[6.1]
  def change
    add_column :series, :aliases, :string, array: true, default: []
  end
end
