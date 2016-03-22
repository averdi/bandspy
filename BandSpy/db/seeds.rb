# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Bandsintown.app_id = 'Bandspy'

events = Bandsintown::Event.search({
    :location => 'Boston, MA',
   :start_date => Time.now,
  :end_date => 1.week.from_now
   })

events.each do |event|
  Event.create(artist_id: event.artist.mbid, venue_id: venue.id, datetime: event.datetime)
end
