class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_path)

    if @room.save
      redirect_to root_path, notice: t("flash.register.create.notice")
    end
  end

  private
  def room_path
    params
      .require(:room)
        .permit :students_id, :courses_id
  end
end
