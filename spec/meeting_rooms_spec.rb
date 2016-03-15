require 'meeting_room'

RSpec.describe 'Meeting Rooms' do
  context 'initialized with known constraints'do
    room1 = MeetingRoom.new('Room 1')
    room2 = MeetingRoom.new('Room 2')
    it 'a room1 has a name Room 1:' do
      expect(room1.name).to eq('Room 1')
    end
    it 'a room2 has a name Room 2:' do
      expect(room2.name).to eq('Room 2')
    end
    it 'have working hours' do
      expect(room1.work_hours).to eq('09:00 - 17:00')
    end
    it 'has a lunch break' do
      expect(room2.lunch).to eq('12:00 - 13:00')
    end
  end

# build meeting room object, knows its buckets of time,
# build a meeting object? knows its name and time, input from file?
# build a scheduler, greedy loads rooms (room time.sort.reverse) fill large meetings first.  Keeps track of meetings to report out the schedule for each room


end


# You are in charge of assigning meeting rooms at your company. Especially many meetings have been planned for next Thursday. so you decided to write a program to help you fit the meetings within your time constraints.
# There are 2 meeting rooms

# The meetings have to be scheduled during core work hours (09:00 - 17:00)
# No meetings can be scheduled during lunchtime (12:00 - 13:00)

# Meetings at your company never overrun and can be scheduled back-to-back. with no gaps in between them.
# Apart from these constraints, meetings can be placed anywhere. and the duration of gaps between them doesn't matter.
# The input contains one meeting per line; the meeting title can contain any characters and is followed by a space and the meeting duration. which is always given in minutes. Since multiple meeting configurations are possible, the test output given here is only one of the possible solutions. and your output doesn‘t have to match it as long as it meets all constraints.

# Please submit your answer as a link to a github repository {or the program you wrote.

TEST_INPUT =

['All Hands meeting 60min',

'Marketing presentation 30min',

'Product team sync 30min',

'Ruby vs Go presentation 45min',

'New app design presentation 45min',

'Customer support sync 30min',

'Frontvend coding interview 60min',

'Skype Interview A 30min',

'Skype Interview 30min',

'Project Bananaphone Kickoff 45min',

'Developer talk 60min',

'API Architecture planning 45min',

'Android app presentation 45min',

'Back-end coding interview A 60min',

'Back-end coding interview B 60min',

'Back-end coding interview C 60min',

'Sprint planning 45min',

'New marketing campaign presentation 30min']

# Test output:

# Room 1:

# 09:00AM All Hands meeting 60min

# 10:00AM API Architecture planning 45min

# 10:45AM Product team sync 30min

# 11:15AM Ruby vs Go presentation 45min

# 12:00PM Lunch

# 01:00PM Back-end coding interview A 60min

# 02:00PM Android app presentation 45min

# 02:45PM New app design presentation 45min

# 03:30PM New marketing campaign presentation 30min

# 04:00PM Customer support sync 30min

# 04:30PM Skype Interview A 30min

# Room 2:

# 09:00AM Back-end coding interview B 60min

# 10:00AM Front-end coding interview 60min

# 11:00AM Skype Interview 30min

# 12:00PM Lunch

# 01:00PM Project Bananaphone Kickoff 45min

# 01:45PM Sprint planning 45min

# 02:30PM Marketing presentation 30min

# 03:00PM Developer talk 60min

# 04:00PM Back-end coding interview C 60min
