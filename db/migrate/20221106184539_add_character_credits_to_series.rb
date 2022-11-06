class AddCharacterCreditsToSeries < ActiveRecord::Migration[6.1]
  def change
    add_column :series, :character_credits, :string, array: true, default: []
  end
end
