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
        @todo = Todo.create(user_id: params[:user_id], list_id: params[:list_id])

        render json: @todo 
    end     

    def destroy
        @todo = Todo.find_by(user_id: params[:user_id], list_id: params[:list_id])

        @todo.destroy
    end 
end
