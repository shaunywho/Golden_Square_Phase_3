require 'diary'

RSpec.describe Diary do

  it "Constructs" do
    contents = "Hello World!"
    diary = Diary.new(contents)
  end 

  it "Can be read" do

    contents = "Hello World!"
    diary = Diary.new(contents)
    expect(diary.read).to eq contents
  end 


end 

