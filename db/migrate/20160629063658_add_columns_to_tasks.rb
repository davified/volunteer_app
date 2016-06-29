class AddColumnsToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :organisation, :string
    add_column :tasks, :address, :string
    add_column :tasks, :country, :string
    add_column :tasks, :start_date, :date
    add_column :tasks, :end_date, :date
    add_column :tasks, :start_time, :time
    add_column :tasks, :end_time, :time
    add_column :tasks, :no_of_volunteers_needed, :integer
  end
end
