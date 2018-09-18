class BoardsController < ApplicationController
    before_action :set_board, only: [:show, :edit, :update]
    
    def index
        @boards = Board.all
    end

    def new
        @board = Board.new
    end

    def create
        Board.create(board_params)
    end

    def show
    end

    def edit
    end

    def update
        @board.update(board_params)

        redirect_to board
    end

    private

      def board_params
          params.require(:board).permit(:name, :title, :body)
      end

      def set_board
        @board = Board.find(params[:id])
      end
end