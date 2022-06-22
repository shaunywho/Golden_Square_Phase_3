RSpec.describe "example" do
  it "example" do
    # This creates the double
    fake_object = double(:fake_object)
    # This creates a 'stub' (fake method) on the double
    # But using 'expect' means the test will fail unless it is called.
    allow(fake_object).to receive(:greet).with("Kay").and_return("Hello, Kay!")

    # This is just to show you what it can now do
    expect(fake_object.greet("Kay")).to eq "Hello, Kay!"
    # fake_object.greet("Henry") # This will throw an error
    # If you comment out the above two lines, the test will fail.
  end
end

RSpec.describe "doubles" do
  # Change `xit` to `it` one by one as you work through.

  it "sets up a blank double" do
    # Set up your doubles here
    fake_object = double(:fake)

    # Don't edit below
    expect(fake_object).to be fake_object
  end

  it "sets up a double with methods" do
    # Set up your doubles here
    fake_object = double(:fake, count_ears: 2, speak: "Meow", count_legs: 4)

    # Don't edit below
    expect(fake_object.speak).to eq "Meow"
    expect(fake_object.count_ears).to eq 2
    expect(fake_object.count_legs).to eq 4
  end

  it "sets up a double with methods that take arguments" do
    # Set up your doubles here
    fake_object = double(:fake)
    allow(fake_object).to receive(:speak).with("Jess").and_return("Meow, Jess")

    # Don't edit below
    expect(fake_object.speak("Jess")).to eq "Meow, Jess"
    # Don't stub this next one
    # It's just to verify you've set up the double correctly
    expect { fake_object.speak("Ron") }.to raise_error RSpec::Mocks::MockExpectationError
  end

  it "sets up doubles that expect to be called" do
    fake_object = double :animal
    # Write an expectation below that the method "speak" is called with
    # the argument "Steve"
    allow(fake_object).to receive(:speak).with("Steve")

    # ...

    # Don't edit below
    fake_object.speak("Steve")
  end

  it "creates a double for a specific case" do
    fake_diary = double :diary, add: nil
    # Set up this double to pass the tests below
    # ...

    allow(fake_diary).to receive(:count_entries).and_return 2 
    # Don't edit below
    fake_diary.add(double :diary_entry)
    fake_diary.add(double :diary_entry)
    expect(fake_diary.count_entries).to eq 2
  end
end

RSpec.describe "doubles challenge" do
  it "creates a sophisticated double" do
    task = double :fake_task
    task_list = double :fake_task_list, list: [task]
    expect(task_list).to receive(:add).with(task)
    expect(task_list).to receive(:count).and_return 1
    expect(task_list).to receive(:clear).and_return :success


    # Don't edit below
    task_list.add(task)
    expect(task_list.list).to eq [task]
    expect(task_list.count).to eq 1
    expect(task_list.clear).to eq :success
  end
end