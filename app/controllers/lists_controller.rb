class ListsController < ApplicationController
    def index
        @lists = List.all 

        render json: ListSerializer.new(@lists) 
    end 

    def show 
        @list = List.find(params[:id])

        render json: @list, include: [:todos]
    end 

    def create
        @list = List.create(list_params)

        render json: ListSerializer.new(@list)
    end 

    def destroy
        @list = List.find(params[:id])

        @list.destroy
    end 

    private

    def list_params
        params.require(:list).permit(:name, :user_id)
    end 
end
