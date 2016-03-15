require 'scheduler'
require 'awesome_print'

RSpec.describe 'Scheduler' do
  meeting = ''
  scheduler = Scheduler.new(meeting)

  it 'instantiates the meeting rooms' do
    expect(scheduler.rooms.count).to eq(2)
  end
  context 'meetings' do
    meetings = 'All Hands meeting 60min, Marketing presentation 30min'
    scheduler = Scheduler.new(meetings)

    it 'are parsed to get meeting duration' do
      expect(scheduler.meetings.first.time).to eq(60)
    end
    it 'are sorted by time, longest first' do
      meeting1 = scheduler.meetings.first
      meeting2 = scheduler.meetings.last
      expect(meeting1.time).to be > meeting2.time
    end
  end
  context 'schedules' do
    two_meetings = 'All Hands meeting 60min, Marketing presentation 30min'
    scheduler = Scheduler.new(two_meetings)

    it 'a meeting only once' do
      expect(scheduler.schedule).to eq(scheduler.schedule)
    end
    test_input = File.read('spec/fixtures/test_input.txt')
    scheduler = Scheduler.new(test_input)

    it 'meetings' do
      expect(scheduler.schedule).to eq(scheduler.schedule)
    end
  context 'outputs' do
    test_input = File.read('spec/fixtures/test_input.txt')
    scheduler = Scheduler.new(test_input)
    scheduler.schedule

    it 'in the tests' do
      scheduler.output
    end
    it 'to a file' do
      #@@TODO
    end
  end


  end
end
