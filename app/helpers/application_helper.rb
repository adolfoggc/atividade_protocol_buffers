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
		return Tv.encode(tv)
	end

	def termo_encode(command, temp)
		termo = Termometro.new
		termo.comando = command
		termo.temp = temp
		return Termometro.encode(termo)
	end

	def tcp_send(object, destination, port)
		s = TCPSocket.new(destination, port)
    s.puts(object)
    s.close
	end

end
