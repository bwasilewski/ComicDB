class CreateSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :series do |t|
      t.string :aliases, array: true, default: []
      t.string :character_credits, array: true, default: []
      t.decimal :count_of_episodes
      t.text :deck
      t.text :description

      t.timestamps
    end
  end
end
