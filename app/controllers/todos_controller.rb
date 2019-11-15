class TodosController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    def index
        @todos =Todo.all

        render json: @todos 
    end     

    def show 
        @todo = Todo.find(params[:id])

        render json: @todo
    end 

    def create
        @todo = Todo.create(todo_params)

        render json: @todo 
    end     

    def destroy
        # @todo = Todo.find(params[:id])

        @todo.destroy
    end 

   
    def update
      if @todo.update(todo_params)
        render json: @todo
      else 
        render json: @todo.errors, status: :unprocessable_entity
      end 
    end


    private

    def set_todo
        @todo = Todo.find(params[:id])
    end 

    def todo_params
        params.require(:todo).permit(:title, :description, :done, :list_id)
    end 
end

