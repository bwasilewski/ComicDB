class RemoveCharacterCreditsFromSeries < ActiveRecord::Migration[6.1]
  def change
    remove_column :series, :character_credits, :string
  end
end
