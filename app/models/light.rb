class Light < ApplicationRecord
	def estado_lampada
		if self.status == true
			return 'Ligado'
		else
			return 'Desligado'
		end
	end
end
