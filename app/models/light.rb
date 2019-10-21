class Light < ApplicationRecord
	
	#estados
	def estado_lampada
		if self.status == 1
			return 'Ligada'
		else
			return 'Desligada'
		end
	end

	#tornar em ruby
	def to_ruby(proto)
		lamp = Lampada.decode(proto)
		if (lamp.comando.to_s.eql?('REQ')) #recebendo resposta
			self.status = lamp.estado
		else
			self.status = nil
		end
	end


end
