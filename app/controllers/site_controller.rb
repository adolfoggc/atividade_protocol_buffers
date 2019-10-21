class SiteController < ApplicationController
  include ApplicationHelper

  def room_data
  	@lights = Light.first
    @tv = Television.first  
  end

  def get_info 	
  	tv = Television.first
    tv.to_ruby(params[:info])
  	if (!tv.status.nil?)
      tv.save
  	end
  	redirect_to site_room_data_path

  end

  def gera_info
  	#lamp = lamp_encode(3, true)
    tv = tv_encode(:REQ, 95, true)
  	redirect_to get_info_path(info: tv )
  end
end
