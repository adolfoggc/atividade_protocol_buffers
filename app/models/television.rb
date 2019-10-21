class Television < ApplicationRecord
	#estados
	def estado_tv
		if self.status == 1
			return 'Ligada'
		else
			return 'Desligada'
		end
	end

	#tornar em ruby
	def to_ruby(proto)
		tv = Tv.decode(proto)
		if (tv.comando.to_s.eql?('REQ')) #recebendo resposta
			if tv.estado == true
				self.status = 1
			else
				self.status = 0
			end
			self.channel = tv.canal
		else
			self.status = nil
		end
	end
end
