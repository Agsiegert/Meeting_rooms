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
    @meetings.sort_by do |meeting|
      meeting.time
    end.reverse
  end

  def output
    @rooms.each do |room|
       puts room.name
      room.meeting_times[:am][:meetings].each do |meeting|
         puts meeting.description
      end
      puts
       puts 'Lunch'
      room.meeting_times[:pm][:meetings].each do |meeting|
         puts meeting.description
      end
    end
  end

  def schedule
    @meetings.each do |meeting|
      fill_rooms(meeting)
    end
  end

  def fill_rooms(meeting)
    @rooms.each do |room|
      if room.meeting_times[:am][:available_time] >= meeting.time
        room.meeting_times[:am][:meetings] << meeting
        room.meeting_times[:am][:available_time] -= meeting.time
        return
      elsif room.meeting_times[:pm][:available_time] >= meeting.time
        room.meeting_times[:pm][:meetings] << meeting
        room.meeting_times[:pm][:available_time] -= meeting.time
        return
      end
    end
  end
end
