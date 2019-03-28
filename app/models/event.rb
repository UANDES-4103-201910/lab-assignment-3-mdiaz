class Event < ApplicationRecord
  belongs_to :venue
  has_many :tickets
  def self.most_tickets_sold
    most_tickets_sold_event = nil
    most_tickets_sold_event_attendance = 0
    self.all.each do |event|
      attendance = 0
      event.tickets.each do |ticket|
        attendance += ticket.order_tickets.sum("quantity")
      end
      if most_tickets_sold_event_attendance < attendance
        most_tickets_sold_event = event
        most_tickets_sold_event_attendance = attendance
      end
    end
    name = ""
    if most_tickets_sold_event != nil
      name = most_tickets_sold_event.name
    end
    name
  end
  
  def self.highest_revenue
    highest_revenue_event = nil
    highest_revenue_event_revenue = 0
    self.all.each do |event|
      revenue = 0
      event.tickets.each do |ticket|
        revenue += ticket.price * ticket.order_tickets.sum("quantity")
      end
      if highest_revenue_event_revenue < revenue
        highest_revenue_event = event
        highest_revenue_event_revenue = revenue
      end
    end
    name = ""
    if highest_revenue_event != nil
      name = highest_revenue_event.name
    end
    name
  end
end
