class RemoveColumnsFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :categories, :string
    remove_column :users, :skills, :string
  end
end
