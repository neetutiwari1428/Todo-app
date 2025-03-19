class TasksController < ApplicationController
  @@id = 1
  @@tasks = []

  def index
    @tasks = @@tasks
    if params[:filter] == "priority"
      @@tasks.sort_by! { |t| -t[:priority] }
    elsif params[:filter] == "due_date_time"
      @@tasks.sort_by! { |t| t[:due_date_time] }
    end
  end

  def create
    task = {
      id: @@id,
      title: params[:title],
      due_date_time: params[:due_date_time],
      priority: params[:priority].to_i,
      completed: false
    }
    @@tasks << task
    @@id += 1
    redirect_to root_path
  end

  def update
    task = @@tasks.find { |t| t[:id] == params[:id].to_i }
    if task
      task[:title] = params[:title]
      task[:due_date_time] = params[:due_date_time]
      task[:priority] = params[:priority].to_i
    end
    redirect_to root_path
  end

  def destroy
    @@tasks.reject! { |t| t[:id] == params[:id].to_i }
    redirect_to root_path
  end

  def task_complete
    task = @@tasks.find { |t| t[:id] == params[:id].to_i }
    if task
      task[:completed] = true
    end
    redirect_to root_path
  end
end
