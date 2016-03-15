require 'meeting_room'

class Scheduler
  attr_accessor :rooms

  def initialize
    @rooms = [MeetingRoom.new('Room 1'), MeetingRoom.new('Room 2')]
  end
end
