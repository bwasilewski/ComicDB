class CreateIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :issues do |t|
      t.string :api_detail_url
      t.date :cover_date
      t.text :deck
      t.text :description
      t.string :image
      t.string :issue_number
      t.string :name
      t.date :store_date
      t.integer :volume

      t.timestamps
    end
  end
end
