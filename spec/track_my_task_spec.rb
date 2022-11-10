require 'track_my_task'

RSpec.describe 'track_my_task' do
  it "should return true if the string include TODO" do
    result = track_my_task("TODO shopping")
    expect(result).to eq true
  end
  it "should return false if the string is todo" do
    result = track_my_task("todo shopping")
    expect(result).to eq false
  end
  it "should return false if the string without todo" do
    result = track_my_task("watch movie")
    expect(result).to eq false
  end
  it "should return false if the string is empty" do
    result = track_my_task("")
    expect(result).to eq false
  end
  context "when no task is set" do
    it "fails" do
      expect{track_my_task(nil)}.to raise_error "No task is set"
    end
  end
end