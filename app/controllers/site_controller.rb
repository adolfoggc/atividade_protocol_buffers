class SiteController < ApplicationController
  include ApplicationHelper

  def room_data
  	@lights = Light.first
  end

  def get_info 	
  	lamp = Light.new
    lamp.to_ruby(params[:info])
  	if (!lamp.status.nil?)
  		lamp.save
  	end
  	redirect_to site_room_data_path

  end

  def gera_info
  	lamp = lamp_encode(3, false)
  	redirect_to get_info_path(info: lamp )
  end
end
