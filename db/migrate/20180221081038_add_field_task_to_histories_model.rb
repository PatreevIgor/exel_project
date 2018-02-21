class AddFieldTaskToHistoriesModel < ActiveRecord::Migration[5.1]
  def change
    add_column :histories, :task, :string
  end
end
