class MeetingRoom
  attr_reader :name, :work_hours, :lunch, :meeting_times

  def initialize(name)
    @name = name
    @work_hours ||= '09:00 - 17:00'
    @lunch ||= '12:00 - 13:00'
    @meeting_times = { am: { meetings: [], available_time: 180 },
                       pm: { meetings: [], available_time: 240 }
                     }
  end
end
