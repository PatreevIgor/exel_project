class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :intfield1
      t.integer :intfield2
      t.date :date1
      t.date :date2
      t.date :date3

      t.timestamps
    end
  end
end
