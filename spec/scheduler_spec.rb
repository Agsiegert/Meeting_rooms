require 'scheduler'

RSpec.describe 'Scheduler' do
  scheduler = Scheduler.new
  it 'instantiates the meeting rooms' do
    expect(scheduler.rooms.count).to eq(2)
  end
end
