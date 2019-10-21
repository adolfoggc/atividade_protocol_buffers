module ApplicationHelper

	def lamp_encode(op, estado) #ruby p Lampada encodada
		lamp = Lampada.new
		lamp.comando = op
		lamp.estado = estado
		return Lampada.encode(lamp)
	end

	def tv_encode(command, channel, state)
		tv = Tv.new
		tv.comando = command
		tv.canal = channel
		tv.estado =  state
		puts tv
		return Tv.encode(tv)
	end
end
