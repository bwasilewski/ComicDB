class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :avatar, :binary
    add_column :users, :profile_text, :text
    add_column :users, :display_name, :string
  end
end
