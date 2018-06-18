class TweetController < ApplicationController
    def index
        @boards= Board.all
        cookies[:user_name] = "이동규"
    end
    
    def new
        
    end
    
    def show
        @board = Board.find(params[:id])
    end
    
 
    
    def create
    board = Board.new
    board.contents = params[:content]
    board.ip_address = request.ip
    board.save
    flash[:success] = "새 글이 등록되었습니다."
    redirect_to "/#{board.id}/show"
    end
    
    def destroy
    board = Board.find(params[:id])
    board.destroy
    flash[:error] = "삭제가 완료되었습니다."
    redirect_to '/'
    end
    
    def edit
        @board = Board.find(params[:id])
    end
    
    def update
        board = Board.find(params[:id])
        board.contents = params[:content]
        board.ip_address = request.ip
        board.save
        flash[:success] = "수정이 완료되었습니다."
        redirect_to "/#{board.id}/show"
        
    end
end
