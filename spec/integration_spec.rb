require 'diary'
require "secret_diary"

RSpec.describe "Integration" do 
  it "Can be read" do
    diary_content ="reading the contents of the diary"
    diary = Diary.new(diary_content)
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq diary_content
  end 

  it "Cannot be read" do  
    diary_content ="reading the contents of the diary"
    diary = Diary.new(diary_content)
    secret_diary = SecretDiary.new(diary)
    expect{secret_diary.read}.to raise_error "Go away!"
  end
end 