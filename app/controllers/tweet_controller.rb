class TweetController < ApplicationController
    def index
        @boards= Board.all
    end
    
    def new
    
    end
    
    def create
    board = Board.new
    board.contents = params[:content]
    board.save
    redirect_to '/'
    end
    
    def destroy
    board = Board.find(params[:id])
    board.destroy
    redirect_to '/'
    end
    
    def edit
        @board = Board.find(params[:id])
    end
    
    def update
        board = Board.find(params[:id])
        board.contents = params[:content]
        board.save
        redirect_to '/'
    end
end
