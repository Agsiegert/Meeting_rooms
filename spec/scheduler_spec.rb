require 'scheduler'

RSpec.describe 'Scheduler' do
  meeting = ''
  scheduler = Scheduler.new(meeting)
  it 'instantiates the meeting rooms' do
    expect(scheduler.rooms.count).to eq(2)
  end
  context 'meetings' do
    one_meeting = 'All Hands meeting 60min'
    scheduler = Scheduler.new(one_meeting)
    it 'are parsed to get meeting duration' do
      expect(scheduler.meetings.first.time).to eq(60)
    end
  end

end

test_input =

"All Hands meeting 60min,

Marketing presentation 30min,

Product team sync 30min,

Ruby vs Go presentation 45min,

New app design presentation 45min,

Customer support sync 30min,

Frontvend coding interview 60min,

Skype Interview A 30min,

Skype Interview 30min,

Project Bananaphone Kickoff 45min,

Developer talk 60min,

API Architecture planning 45min,

Android app presentation 45min,

Back-end coding interview A 60min,

Back-end coding interview B 60min,

Back-end coding interview C 60min,

Sprint planning 45min,

New marketing campaign presentation 30min"
