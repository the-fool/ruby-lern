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
end
