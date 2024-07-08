class JapansController < ApplicationController
    
    def edit
        @japan = Japan.find(params[:id])
    end

    def index
        if params[:search] == nil
            @japans= Japan.all
        elsif params[:search] == ''
            @japans= Japan.all
        else
            
            @japans = Japan.where("body LIKE ? ",'%' + params[:search] + '%')
        end
    end
    def new
        @japan = Japan.new
    end
    
    def show
        @japan = Japan.find(params[:id])
        @comments = @japan.comments
        @comment = Comment.new
    end

    def create
        japan = Japan.new(japan_params)
        if japan.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
    end

    def update
        japan = Japan.find(params[:id])
        if japan.update(japan_params)
          redirect_to :action => "show", :id => japan.id
        else
          redirect_to :action => "new"
        end
    end
    
    private
    def japan_params
        params.require(:japan).permit(:number, :comment, :guest, :youtube_url)
    end
end
