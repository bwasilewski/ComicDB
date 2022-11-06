class CreateSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :series do |t|
      t.string :aliases
      t.string :api_detail_url
      t.string :character_credits
      t.integer :count_of_episodes
      t.datetime :date_last_updated
      t.text :deck
      t.text :description
      t.string :api_id
      t.string :image
      t.string :name
      t.string :publisher
      t.string :site_detail_url
      t.string :start_year

      t.timestamps
    end
  end
end
