class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :code
      t.string :task
      t.string :responsible
      t.date :begin_date
      t.date :end_date
      t.integer :count_days
      t.text :status
      t.date :begin_date_fact
      t.date :end_date_fact
      t.float :budget
      t.float :debit
      t.float :credit
      t.float :fund_balance
      t.float :deviation
      t.float :income
      t.float :total
      t.text :comments

      t.timestamps
    end
  end
end
