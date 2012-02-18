require "rubygems"
require "gcal4ruby"

service = GCal4Ruby::Service.new
service.authenticate "w.stock@yahoo.com", "password"

cal = GCal4Ruby::Calendar.find(service, 'orimisu',{}).first

#events = GCal4Ruby::Event.find(service, "", {
#    :calendar => cal.id, 'start-min' => Time.parse("14/02/2012").utc.xmlschema,
#    'start-max' => Time.parse("28/02/2012").utc.xmlschema
#})

event = GCal4Ruby::Event.new(service, {:calendar => cal, 'title' => "Soccer Game", 'start_time' => Time.parse("18-02-2012 at 12:30 PM"), 'end_time' => Time.parse("18-02-2012 at 1:30 PM"), 'where' => "Merry Playfields"})
event.save

#events.each do |event|
#    puts event.title
#   puts event.attendees.join ", "
#  puts event.start_time
#  puts event.end_time
#    puts '-----------------------'
#end




