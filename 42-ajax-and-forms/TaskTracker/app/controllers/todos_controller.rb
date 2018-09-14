class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new
    @todo.content = params[:todo][:content]
    if @todo.save
      if request.xhr?
        respond_to do |format|
        format.html do
          render partial: 'todo', locals: {todo: @todo}
        end
        format.json { render  json: @todo }
        end

      else
      redirect_to root_url
      end
    end
  end

  def index
    @todo = Todo.new
    @todos = Todo.all
  end
end
