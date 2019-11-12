class TodosController < ApplicationController

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
        @todo = Todo.find_by(user_id: params[:user_id], list_id: params[:list_id])

        @todo.destroy
    end 

    private

    def todo_params
        params.permit(:title, :description, :done, :user_id, :list_id)
    end 
end

