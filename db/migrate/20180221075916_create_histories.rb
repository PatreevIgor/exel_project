class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.string :owner
      t.string :event
      t.datetime :date

      t.timestamps
    end
  end
end
