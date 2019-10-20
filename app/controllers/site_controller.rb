class SiteController < ApplicationController
  def room_data
  	@lights = Light.first
  end

  def get_info
  	
  	data = Lampada.decode(params[:info])
  	if (data.comando.to_s.eql?('GETESTADO'))
  		if(Light.count == 0)
  			light = Light.new(status: data.estado)
  		else
  			light = Light.first
  			light.status = data.estado
  		end
  		light.save
  	else
  		puts '-------UEEEEEEEPA-------'
  		puts data.comando.class
  		puts data.estado.class
  	end
  	redirect_to site_room_data_path

  end

  def gera_info
  	lamp = Lampada.new(
  			comando: 2, #get - 2, set - 1
  			estado: true
  		)

  	lamp = Lampada.encode(lamp)
  	redirect_to get_info_path(lamp)
  end
end
