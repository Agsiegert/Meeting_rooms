require 'meeting_room'
require 'meeting'

class Scheduler
  attr_accessor :rooms, :meetings

  def initialize(meetings)
    @rooms = [MeetingRoom.new('Room 1'), MeetingRoom.new('Room 2')]
    @meetings = sort_meetings(meetings)
  end

  def sort_meetings(meetings)
    @meetings = []
    meetings.split(',').each do |meeting|
      meeting_description = meeting
      meeting_time = /\d+/.match(meeting)
      meeting = Meeting.new
      meeting.description = meeting_description
      meeting.time = meeting_time.to_s.to_i
      @meetings << meeting
    end
    @meetings
  end
end
