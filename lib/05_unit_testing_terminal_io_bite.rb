class InteractiveCalculator
  def initialize(kernel)
    @kernel = kernel
  end 

  def run
    @kernel.puts "Hello. I will subtract two numbers"
    @kernel.puts "Please enter a number"
    number_1 = @kernel.gets.to_i
    @kernel.puts "Please enter another number"
    number_2 = @kernel.gets.to_i
    @kernel.puts "Here is your result:"
    @kernel.puts "#{number_1} - #{number_2} = #{number_1-number_2}"
  end 
end 


# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1
class StringRepeater
  def initialize(kernel)
    @kernel = kernel
  end
  
  def run
    @kernel.puts "Hello. I will repeat a string many times."
    @kernel.puts "Please enter a string"
    str = @kernel.gets
    @kernel.puts "Please enter a number of repeats"
    num = @kernel.gets.to_i
    @kernel.puts "Here is your result:"
    @kernel.puts "#{str*num}"

  end

end


# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run