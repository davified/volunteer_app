class AddColumnsToUsertasks < ActiveRecord::Migration[5.0]
  def change
    add_column :usertasks, :registered, :boolean
    add_column :usertasks, :completed, :boolean
    add_index :usertasks, ['user_id', 'task_id']
  end  
end
