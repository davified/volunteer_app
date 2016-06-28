class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :categories
      t.string :skills
      t.string :images

      t.timestamps
    end
  end
end
