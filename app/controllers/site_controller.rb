class SiteController < ApplicationController
  def room_data
  	@rooms = RoomStatus.order(id: :desc)
  end

  def get_info
  	room = RoomStatus.new
  	room.ac_temperature = params[:info].to_i
  	room.save
  end
end
