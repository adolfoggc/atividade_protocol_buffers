class SiteController < ApplicationController
  include ApplicationHelper
  require 'socket'

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

  #gets e sets
  def get_temp
    termo = Thermo.new
    termo.to_ruby(params[:info])
    if (!termo.temperature.nil?)
      obj.save
    end
  end

  def set_temp
    termo = termo_encode(params)
    ###
  end

  def get_tv
    tv = Tv.first
    tv.to_ruby(params[:info])
    if (!tv.status.nil?)
      tv.save
    end
  end

  def set_tv
    tv = tv_encode(params)
    ###
  end

  def get_lamp
    lamp = Light.first
    lamp.to_ruby(params[:info])
    if (!lamp.status.nil?)
      lamp.save
    end
  end

  def set_lamp
    #lamp = lamp_encode(params)
    #link_to 'test', root_url(:port => 80, :only_path => false)
    ###

    # s = TCPSocket.open('localhost', 3004)
    # puts "\UPTIME"
    # s.close
    s = TCPSocket.new 'localhost', 8080

    s.puts('UPTIME'.to_s)
    s.close

  end
end
