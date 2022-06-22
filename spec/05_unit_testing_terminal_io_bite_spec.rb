require '05_unit_testing_terminal_io_bite'
# interactive_calculator = InteractiveCalculator.new(Kernel=>)
# interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1


RSpec.describe InteractiveCalculator do

  it "subtracts two number using the terminal" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).and_return("Hello. I will subtract two numbers")
    expect(terminal).to receive(:puts).and_return("Please enter a number")
    expect(terminal).to receive(:gets).and_return("4")
    expect(terminal).to receive(:puts).and_return("Please enter another number")
    expect(terminal).to receive(:gets).and_return("3")
    expect(terminal).to receive(:puts).and_return("Here is your result:")
    expect(terminal).to receive(:puts).and_return("4 - 3 = 1")
    interactive_calculator = InteractiveCalculator.new(terminal )
    interactive_calculator.run
  end 


end 

RSpec.describe StringRepeater do

  it "returns a repeated string up to a value determined by the user" do
    kernel = double :kernel
    expect(kernel).to receive(:puts).and_return("Hello. I will repeat a string many times.")
    expect(kernel).to receive(:puts).and_return("Please enter a string")
    expect(kernel).to receive(:gets).and_return("TWIX")
    expect(kernel).to receive(:puts).and_return("Please enter a number of repeats")
    expect(kernel).to receive(:gets).and_return("10")
    expect(kernel).to receive(:puts).and_return("Here is your result:")
    expect(kernel).to receive(:puts).and_return("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX")
    string_repeater = StringRepeater.new(kernel)
    string_repeater.run
  end 


end 

