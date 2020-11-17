require_relative 'pet'
require_relative 'panda'
require_relative 'tiger'

class Ui
    COMMANDS = %w[есть пить спать туалет играть статус разбудить наблюдать помощь выход].freeze

    def init_pet
        puts 'Выберите животное: панда или тигр.'
        type = gets.chomp.downcase
        puts 'Дайте имя своему животному.'
        name = gets.chomp.capitalize
        if type == 'панда'
            @pet = Panda.new(name)
        elsif type == 'тигр'
            @pet = Tiger.new(name)
        else
            puts 'Неверный тип животного.'
        end
        puts "Поздравляю, #{name} - ваш новый питомец! Теперь вам необходимо заботится о нем."
    end

    def game_start
        init_pet

        while true
            command = comm_input
            case command
            when 'есть'
                @pet.feed
            when 'пить'
                @pet.water
            when 'спать'
                @pet.sleep
            when 'туалет'
                @pet.toilet
            when 'играть'
                @pet.play
            when 'статус'
                p @pet
            when 'разбудить'
                @pet.wake
            when 'наблюдать'
                @pet.random
            when 'помощь'
                @pet.help
            when 'выход'
                break
            else
                p "Извините, но я не знаю такой комманды."
            end
        end
    end

    def comm_input
        puts 'Пожалуйста, введите комманду: '
        puts COMMANDS.join(', ')
        command = gets.chomp.downcase
    end
end

Ui.new.game_start