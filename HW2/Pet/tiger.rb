require_relative 'pet'
class Tiger < Pet
    REACTIONS = [
        ['Тигренок начинает вылизывать свою шерсть.'],
        ['Вы наблюдаете, как тигренок затаился и вслушивается в звуки.'], 
        ['Вы видите, как тигренок точит когти об кору дерева.']
    ].freeze

    def initialize(name)
        super
    end

    def random
        puts REACTIONS.sample.map
        timePassed
    end
end