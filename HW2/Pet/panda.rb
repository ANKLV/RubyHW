require_relative 'pet'
class Panda < Pet
	REACTIONS = [
		['Панда смотрит на вас с недоумением.'],
		['Вы наблюдаете, как панда катается по земле туда-сюда.'], 
		['Вы видите, как панда ходит туда-сюда в поисках занятия.']
	].freeze

	def initialize(name)
		super
	end

	def random
		puts REACTIONS.sample.map
		timePassed
	end
end