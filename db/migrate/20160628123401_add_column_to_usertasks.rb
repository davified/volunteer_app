class AddColumnToUsertasks < ActiveRecord::Migration[5.0]
  def change
  add_column :usertasks, :user_id, :integer
  add_column :usertasks, :task_id, :integer
end
end
