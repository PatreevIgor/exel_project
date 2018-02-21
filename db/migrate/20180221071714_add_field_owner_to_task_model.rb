class AddFieldOwnerToTaskModel < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :owner, :string
  end
end
