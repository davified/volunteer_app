class AddColumnsToTaskTable < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :no_of_volunteers_signed_up, :integer
    add_column :tasks, :owned_by_user_id, :integer
    remove_column :tasks, :organisation
  end
end
