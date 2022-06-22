# As a class
class FakeObject
  def initialize
    @greet_has_been_called = false
  end

  def greet(name)
    fail unless name == "Kay"
    @greet_has_been_called = true
    return "Hello, Kay!"
  end

  def has_greet_been_called
    return @greet_has_been_called
  end
end

fake_object = FakeObject.new
fake_object.has_greet_been_called # => false
fake_object.greet("Kay") # => "Hello, Kay!"
fake_object.has_greet_been_called # => true
fake_object.greet("Henry") # Raises an error


