require "04_unit_testing_api_requests_bite"
require "time"

RSpec.describe TimeError do
  it "should return a string indicating the time error between server and localmachine" do

    fake_request = double(:fake_request)
    fake_time = double(:fake_time)
    time_error = TimeError.new(fake_request)
    expect(fake_time).to receive(:now).and_return(Time.parse("2022-06-21 11:19:58 +0100"))
    expect(fake_request).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"BST","client_ip":"77.97.24.194","datetime":"2022-06-21T11:20:00.859281+01:00","day_of_week":2,"day_of_year":172,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1655806800,"utc_datetime":"2022-06-21T10:20:00.859281+00:00","utc_offset":"+01:00","week_number":25}')

    expect(time_error.error(fake_time)).to eq 2.859281
  end 

end 

RSpec.describe CatFacts do
  it "should returns the correct json when uri is requested from" do
    fake_request = double(:fake_request)
    expect(fake_request).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"Cats have 3 eyelids.","length":20}')
    cat_facts = CatFacts.new(fake_request)
    expect(cat_facts.provide).to eq "Cat fact: Cats have 3 eyelids."
  end 
end 