class SiteController < ApplicationController
  include ApplicationHelper

  def room_data
  	@lights = Light.first
    @tv = Television.first
    @termo = Thermo.first
  end

  def get_info 	
  	obj = Thermo.first #Television.first
    obj.to_ruby(params[:info])
  	if (!obj.temperature.nil?)
      obj.save
  	end
  	redirect_to site_room_data_path

  end

  def gera_info
  	#obj = lamp_encode(3, true)
    #obj = tv_encode(:REQ, 95, true)
  	obj = termo_encode(:REQ, 35)
    redirect_to get_info_path(info: obj )
  end
end
