class PiecesController < ApplicationController
  def index
    @pieces = Piece.order('created_at')
  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(piece_params)
    if @piece.save
      flash[:success] = 'The piece was added!'
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def piece_params
    params.require(:piece).permit(:image, :title, :year, :for_sale)
  end
end
