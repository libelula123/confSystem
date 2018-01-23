class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
    @rooms = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update_attributes(allowed_params)
      redirect_to @room, notice: 'Room has been updated'
    else
      render :edit
    end
  end

  private

  def allowed_params
    params.require(:room).permit(:name)
  end
end
