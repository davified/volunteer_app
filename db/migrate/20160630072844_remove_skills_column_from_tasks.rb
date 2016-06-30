class RemoveSkillsColumnFromTasks < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :skills
  end
end
