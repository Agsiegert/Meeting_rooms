class MeetingRoom
  attr_reader :name, :work_hours, :lunch

  def initialize(name)
    @name = name
    @work_hours ||= '09:00 - 17:00'
    @lunch ||= '12:00 - 13:00'
  end
end
