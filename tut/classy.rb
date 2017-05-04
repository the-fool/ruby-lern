class Walrus
  attr_accessor :food

  def initialize(food = ['cottage cheese'])
    @food = food
  end

  def eat
    if @food.nil?
      puts "..."
    elsif @food.respond_to?("each")
      @food.each do |x|
        self._eat(x)
      end
    else
      self._eat(@food)
    end
  end

  def _eat(x)
    puts "I eat the #{x}!"
  end

  def cook
    if @food.nil?
      puts "..."
    elsif @food.respond_to?("join")
      self._cook(@food.join(", "))
    else
      self._cook(@food)
    end

  end

  def _cook(x)
    puts "I will eat #{x}.  After cooking it."
  end
end
