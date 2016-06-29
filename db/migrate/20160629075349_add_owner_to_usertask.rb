class AddOwnerToUsertask < ActiveRecord::Migration[5.0]
  def change
    add_column :usertasks, :is_owner, :boolean, default: false
  end
end
