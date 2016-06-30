class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :tasks, :skills do |t|
      t.index [:task_id, :skill_id]
      t.index [:skill_id, :task_id]
    end
  end
end
