class Venue < ApplicationRecord
  has_many :events
  def last_attendance
    attendance = 0
    event = events.where("start_date < ?", Time.now).order(:start_date).last
    if event != nil
      event_tickets = event.tickets
      event_tickets.each do |ticket|
        attendance += ticket.order_tickets.sum("quantity")
      end
    end
    attendance
  end
end
