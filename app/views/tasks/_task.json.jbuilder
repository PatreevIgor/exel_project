json.extract! task, :id, :code, :task, :responsible, :begin_date, :end_date, :count_days, :status, :begin_date_fact, :end_date_fact, :budget, :debit, :credit, :fund_balance, :deviation, :income, :total, :comments, :created_at, :updated_at
json.url task_url(task, format: :json)
