class Pet
  attr_accessor :name

  def initialize(name)
    @name = name
    @hp = 10
    @asleep = false
    @stuffInBelly = 6
    @stuffInIntestine = 0
    @hydration = 6
    @energy = 10
    @mood = 6
    @poop = false
    @lives = 3
  end

  def feed
    if @stuffInBelly < 10
        @stuffInBelly += 4
        @stuffInIntestine += 2
        @mood += 1
        puts 'Вы покормили своего питомца.'
    else
        puts 'Ваш питомец не голоден.'
    end
    timePassed
  end

  def water
    if @hydration < 10
        @hydration += 4
        @mood += 1
        puts 'Ваш питомец попил.'
    else
        puts 'Ваш питомец не хочет пить.'
    end
    timePassed
  end

  def sleep
    if (@energy < 7) & (@asleep == false)
        @energy += 6
        @asleep = true
        puts 'Вы укладываете своего питомца спать.'
    elsif @asleep == true
        puts 'Ваш питомец уже спит.'
    else
        puts 'Ваш питомец не хочет спать.'
    end
    timePassed
  end

  def toilet
    if @stuffInIntestine > 5
        @stuffInIntestine = 0
        puts 'Ваш питомец сходил в туалет.'
    else 
        puts 'Ваш питомец не хочет в туалет.'
    end
    timePassed
  end

  def play
    puts 'Вы играете с вашим питомцем.'
    @mood += 2
    @energy -= 1
    timePassed
  end

  def wake
    if @asleep == true
        @asleep = false
        puts "#{@name} просыпается."
    else
        puts 'Ваш питомец не спит.'
    end
  end

  def help
    puts 'есть - накормить питомца'
    puts 'пить - напоить питомца'
    puts 'спать - положить спать'
    puts 'туалет - отвести в туалет'
    puts 'играть - поиграть с питомцем'
    puts 'статус - показывает состояние питомца'
    puts 'разбудить - разбудить питомца'
    puts 'помощь - список комманд'
    puts 'выход - выход из игры'
  end


  private

  def hungry?
    @stuffInBelly <= 3
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def thirsty?
    @hydration <= 2
  end

  def sleepy?
    @energy <= 2
  end

  def boring?
    @mood < 5
  end

  def timePassed
    @stuffInBelly -= 1
    @stuffInIntestine += 1
    @hydration -= 1
    @energy -= 1
    @mood -= 1
    health
    needs
    death
  end

  def health
    if (@stuffInBelly < 5) or (@hydration < 5) or (@energy < 5) or (@mood < 5)
        @hp -= 1
    elsif (@stuffInBelly > 6) & (@hydration > 6) & (@energy > 6) & (@mood > 6)
        @hp += 1
    end
  end

  def death
    if @hp == 0
        @lives -= 1
        puts "Ваш питомец умер. Осталось жизней #{@lives}"
        @hp = 10
        @asleep = false
        @stuffInBelly = 6
        @stuffInIntestine = 0
        @hydration = 6
        @energy = 8
        @mood = 6
        @poop = false
    end
  end
            
  def needs
    puts(@name + ' плохо себя чувствует.') if @hp < 5
    puts(@name + ' хочет есть.') if hungry?
    puts(@name + ' хочет пить.') if thirsty?
    puts(@name + ' хочет в туалет.') if poopy?
    puts(@name + ' скучает.') if boring?
    puts(@name + ' хочет спать.') if sleepy?
  end
end
