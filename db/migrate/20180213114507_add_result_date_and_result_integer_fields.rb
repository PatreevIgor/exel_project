class AddResultDateAndResultIntegerFields < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :result_integer, :integer
    add_column :projects, :result_date, :integer
  end
end
