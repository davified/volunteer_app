class CreateUsertasks < ActiveRecord::Migration[5.0]
  def change
    create_table :usertasks do |t|

      t.timestamps
    end
  end
end
