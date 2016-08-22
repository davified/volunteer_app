class AddSkillIdToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :skill_id, :integer
    add_column :users, :skill_id, :integer
  end
end
