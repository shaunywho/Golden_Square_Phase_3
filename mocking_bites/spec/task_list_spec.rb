require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "returns task when all is called" do
    task_list = TaskList.new
    task = double :fake_task
    task_list.add(task)
    expect(task_list.all).to eq [task]
  end

  it "returns false when all_complete? is called" do
    task_list = TaskList.new
    task_1, task_2, task_3 = double(:fake_task, complete?: true), double(:fake_task, complete?: false), double(:fake_task, complete?: true)
    task_list.add(task_1)
    task_list.add(task_2)
    task_list.add(task_3)
    expect(task_list.all_complete?).to eq false
  end 

  it "returns true when all_complete? is called" do
    task_list = TaskList.new
    task_1, task_2, task_3 = double(:fake_task, complete?: true), double(:fake_task, complete?: true), double(:fake_task, complete?: true)
    task_list.add(task_1)
    task_list.add(task_2)
    task_list.add(task_3)
    expect(task_list.all_complete?).to eq true
  end 

  # Unit test `#all` and `#all_complete?` behaviour
end
