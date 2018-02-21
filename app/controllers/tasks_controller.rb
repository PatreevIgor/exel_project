class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)

    if @task.save
      History.create(date: DateTime.now - 3, 
                  event: 'создал(а)',
                  task: @task.task,
                  owner: current_user.name)
    end

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update

    if @task.save
      History.create(date: DateTime.now - 3, 
                     event: 'обновил(а)',
                     task: @task.task,
                     owner: current_user.name)
    end

    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy

    if @task.destroy
      History.create(date: DateTime.now - 3, 
                  event: 'удалил(а)',
                  task: @task.task,
                  owner: current_user.name)
    end

    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def button_begin
    id_task = params[:format].to_i
    my_task = Task.find(id_task)
    my_task.begin_date_fact = DateTime.now.to_date
    my_task.save

    if my_task.save
      History.create(date: DateTime.now - 3, 
                     event: 'запустил(а)',
                     task: my_task.task,
                     owner: current_user.name)
      my_task.owner = current_user.name
      my_task.save
    end

    redirect_to root_path
  end

  def button_finish
    id_task = params[:format].to_i
    my_task = Task.find(id_task)
    my_task.end_date_fact = DateTime.now.to_date
    my_task.save

    if my_task.save
      History.create(date: DateTime.now - 3, 
                     event: 'завешил(а)',
                     task: my_task.task,
                     owner: current_user.name)
      my_task.owner = current_user.name
      my_task.save
    end

    redirect_to root_path
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:code, :task, :responsible, :begin_date, :end_date, :count_days, :status,
                                   :begin_date_fact, :end_date_fact, :budget, :debit, :credit, :fund_balance, 
                                   :deviation, :income, :total, :comments).merge({ owner: current_user.name })
    end

    def fill_status
      Task.all.each do |task|
      end
    end
end
