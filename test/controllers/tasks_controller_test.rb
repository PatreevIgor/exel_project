require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { begin_date: @task.begin_date, begin_date_fact: @task.begin_date_fact, budget: @task.budget, code: @task.code, comments: @task.comments, count_days: @task.count_days, credit: @task.credit, debit: @task.debit, deviation: @task.deviation, end_date: @task.end_date, end_date_fact: @task.end_date_fact, fund_balance: @task.fund_balance, income: @task.income, responsible: @task.responsible, status: @task.status, task: @task.task, total: @task.total } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { begin_date: @task.begin_date, begin_date_fact: @task.begin_date_fact, budget: @task.budget, code: @task.code, comments: @task.comments, count_days: @task.count_days, credit: @task.credit, debit: @task.debit, deviation: @task.deviation, end_date: @task.end_date, end_date_fact: @task.end_date_fact, fund_balance: @task.fund_balance, income: @task.income, responsible: @task.responsible, status: @task.status, task: @task.task, total: @task.total } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
  end
end
