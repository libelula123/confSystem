class RoomsController < ApplicationController
  # before_filter :authorize, only: [:edit, :update] # rails 4
  # before_action :authorize, only: [:edit, :update] # rails 5

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
    @room = Room.find(params[:id])


  end

  def update
    @room = Room.find(params[:id])
    # if @room.update_attributes(allowed_params)
    #   redirect_to @room, notice: 'Room has been updated'
    # else
    #   render :edit
    # end

  end

  def book
    @aaa = 'lavinia'
  end

  private

  def allowed_params
    params.require(:room).permit(:name)
  end
end
