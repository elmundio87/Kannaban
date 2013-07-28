class TasksController < ApplicationController

def new 
end

def create
	@task = Task.new(task_params)

	@task.save
	redirect_to @task
	
	#render text: params[:task].inspect
end

def show
  @task = Task.find(params[:id])
end

def index
	@tasks = Task.all
end

private
  def task_params
    params.require(:task).permit(:title, :description,:status,:priority)
  end

end
