class SiteController < ApplicationController
  include ApplicationHelper
  require 'socket'

  def room_data
  	@lights = Light.first
    @tv = Television.first
    @termo = Thermo.first

    @new_light = Light.new
    @new_tv = Television.new
    @new_termo = Thermo.new
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
    t = Television.first
    if params[:commit].eql?('Ligar')
      t.status = 1
      status = true
    elsif params[:commit].eql?('Desligar')
      t.status = 0
      status = false
    elsif params[:commit].eql?('Mudar')
      t.channel = params[:television][:channel]
      if t.status == 1
        status = true
      else
        status = false
      end
    end
    t.save
    t = tv_encode(3, t.channel, status)
    tcp_send(t, 'localhost', 10000)
    redirect_to root_path
  end

  def get_lamp
    lamp = Light.first
    lamp.to_ruby(params[:info])
    if (!lamp.status.nil?)
      lamp.save
    end
  end

  def set_lamp
    l = Light.first
    if l.status == 0
      l.status = 1
      status = true
    else
      l.status = 0
      status = false
    end
    l.save
    lamp = lamp_encode(3, status)
    tcp_send(lamp, 'localhost', 10000)
    redirect_to root_path
  end
end
