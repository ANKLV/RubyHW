class Pet
  attr_accessor :name

  def initialize(name)
  	@name = name
  	@asleep = false
  	@stuffInBelly = 10
  	@stuffInIntestine = 0
  	@hydration = 5
  	@energy = 10
  	@mood = 6
  	@poop = false
  	@lives = 3
  end

  def feed
  	if @stuffInBelly < 10
  		@stuffInBelly += 2
  		@stuffInIntestine += 2
  		@mood += 1
  		puts 'Вы покормили своего питомца.'
  	else
  		puts 'Ваш питомец не голоден.'
  	end
  	needs
  end

  def water
  	if @hydration < 10
  		@hydration += 3
  		@mood += 1
  		puts 'Ваш питомец попил.'
  	else
  		puts 'Ваш питомец не хочет пить.'
  	end
  	needs
  end

  def sleep
  	if (@energy < 7) & (@asleep == false)
  		@energy += 3
  		@asleep = true
  		puts 'Вы укладываете своего питомца спать.'
  	elsif @asleep == true
  	    puts 'Ваш питомец уже спит.'
  	else
  		puts 'Ваш питомец не хочет спать.'
  	end
  	needs
  end

  def toilet
  	if @stuffInIntestine > 5
  		puts 'Ваш питомец сходил в туалет.'
  	else 
  		puts 'Ваш питомец не хочет в туалет.'
  	end
  	needs
  end

  def play
  	puts 'Вы играете с вашим питомцем.'
  	@mood += 2
  	@energy -= 1
  	needs
  end

  private

  def hungry?
  	@stuffInBelly <= 3
  end

  def poopy?
  	@stuffInIntestine >= 8
  end

  def thirsty?
  	@hydration <= 3
  end

  def sleepy?
  	@energy <= 2
  end

  def boring?
  	@mood < 5
  end

  def timePassed
  	if @stuffInBelly > 0
  		@stuffInBelly -= 1
  		@stuffInIntestine += 1
  		@hydration -= 1
  		@mood -= 1
  	elsif @asleep
  		@asleep = false
  		@stuffInBelly -= 1
  		puts 'Он внезапно просыпается!'
  	end
  	puts @name + ' проголодался! Покормите его, пока он не съел вас!'
  end

  def needs
  	puts(@name + ' хочет есть.') if hungry?
  	puts(@name + ' хочет пить.') if thirsty?
  	puts(@name + ' хочет в туалет.') if poopy?
  	puts(@name + ' скучает.') if boring?
  	puts(@name + ' хочет спать.') if sleepy?
  end
end