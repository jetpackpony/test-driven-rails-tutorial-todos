class TodosController < ApplicationController
  before_filter :authenticate

  def index
    @todos = Todo.where email: current_email
  end

  def new
    @todo = Todo.new
  end
  
  def create
    params[:todo][:email] = current_email
    todo = Todo.new(todo_params)
    if todo.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :email)
  end
end
