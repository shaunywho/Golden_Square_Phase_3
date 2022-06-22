require 'task_formatter'

RSpec.describe TaskFormatter do
  it "constructs" do
  fake_task = double(:fake_task)
  task_formatter = TaskFormatter.new(fake_task)
  end 

  it "returns completed task as a string '[x] Task Title" do
  fake_task = double(:fake_task, complete?: true, title: "title", )
  task_formatter = TaskFormatter.new(fake_task)

  expect(task_formatter.format).to eq '[x] title'
  end 

  it "returns uncompleted task as a string '[ ] Task Title" do
    fake_task = double(:fake_task, complete?: false, title: "title")
    task_formatter = TaskFormatter.new(fake_task)
  
    expect(task_formatter.format).to eq '[ ] title'
  end 

end

