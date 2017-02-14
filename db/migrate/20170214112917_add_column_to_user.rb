class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :rc_id, :string, null: false, default: ""
  end
end
