class Thermo < ApplicationRecord
	def celsius
		return "#{self.temperature}°C"
	end

	def farenheit
		return "#{((self.temperature)*(9/5))+32}°F"
	end

	def kelvin
		return "#{(self.temperature + 273.15)}K"
	end

	#tornar em ruby
	def to_ruby(proto)
		termo = Termometro.decode(proto)
		if (termo.comando.to_s.eql?('REQ')) #recebendo resposta
			self.temperature = termo.temp
		else
			self.temperature = nil
		end
	end
end
