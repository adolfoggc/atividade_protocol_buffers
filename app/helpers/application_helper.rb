module ApplicationHelper

	def lamp_encode(op, estado) #ruby p Lampada encodada
		lamp = Lampada.new
		lamp.comando = op
		lamp.estado = estado
		puts lamp
		return Lampada.encode(lamp)
	end

	def tv_encode
		tv = Tv.new
		
	end
end
