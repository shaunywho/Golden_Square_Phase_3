require "test"

RSpec.describe TodoList do
  it "constructs" do
  todo_list = TodoList.new
  expect(todo_list.list).to eq []
  end 
end 
