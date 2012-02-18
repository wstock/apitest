require "rubygems"
require "gcal4ruby"

service = GCal4Ruby::Service.new
service.authenticate "w.stock@yahoo.com", "mudbar50!"

cal = GCal4Ruby::Calendar.find(service, 'orimisu',{}).first

events = GCal4Ruby::Event.find(service, "", {
    :calendar => cal.id, 'start-min' => Time.parse("14/02/2012").utc.xmlschema,
    'start-max' => Time.parse("28/02/2012").utc.xmlschema
})


events.each do |event|
    puts event.title
   puts event.attendees.join ", "
  puts event.start_time
  puts event.end_time
    puts '-----------------------'
end




