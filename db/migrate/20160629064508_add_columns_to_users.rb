class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_organisation, :boolean
    add_column :users, :categories, :string
    add_column :users, :skills, :string
    add_column :users, :images, :string
    add_column :users, :rating, :string
  end
end
