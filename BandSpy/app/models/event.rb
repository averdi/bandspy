class Event < ActiveRecord::Base
  belongs_to :artist
  belongs_to :venue

  @events = Bandsintown::Event.search({
      :location => 'Austin, TX',
      :start_date => Time.now,
      :end_date => 1.week.from_now
    })

end
