class ListsController < ApplicationController
    def index
        @lists = List.all 

        render json: @lists, include: [:todos]
    end 

    def show 
        @list = List.find(params[:id])

        render json: @list, include: [:todos]
    end 
end
