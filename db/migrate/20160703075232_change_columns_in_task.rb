class ChangeColumnsInTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :organisation, :string
    remove_column :tasks, :categories
  end
end
