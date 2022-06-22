require "secret_diary"

RSpec.describe SecretDiary do

  it "Constructs" do
    fake_diary = double(:fake_diary)
    secret_diary = SecretDiary.new(fake_diary)
  end

  it "Can be read" do
    diary_content ="reading the contents of the diary"
    fake_diary = double(:fake_diary, read: diary_content)
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq diary_content
  end 

  it "Cannot be read" do  
    diary_content ="reading the contents of the diary"
    fake_diary = double(:fake_diary, read: diary_content)
    secret_diary = SecretDiary.new(fake_diary)
    expect{secret_diary.read}.to raise_error "Go away!"
  end

end 
