require 'meeting'

RSpec.describe 'Meeting' do
  meeting = Meeting.new
  it 'has a description' do
    expect(meeting).to respond_to(:description)
  end
  it 'has a time' do
    expect(meeting).to respond_to(:time)
  end
end
