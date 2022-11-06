class RemoveAliasesFromSeries < ActiveRecord::Migration[6.1]
  def change
    remove_column :series, :aliases, :string
  end
end
