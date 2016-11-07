class ListsController < ApplicationController
    def index
        @list = List.new
        @lists = List.all
    end
    
    def show
        @list = List.find(params[:id])
    end
    
    def create
        @list = List.new(list_params
        if @list.save
            redirect_to list_url(@list)
        else
            render :index
        end
    end
    
    private
    
    def list_params
        params.require(:list).permit(:name)
    end
end
