class User < ApplicationRecord
  has_many :orders
  def most_expensive_ticket_bought
    most_expensive = 0
    orders.each do |order|
      order.tickets.each do |ticket|
        most_expensive = ticket.price if ticket.price > most_expensive
      end
    end
    most_expensive
  end

  def most_expensive_ticket_bought_between(start_date, end_date)
    most_expensive = 0
    orders.where(created_at: start_date .. end_date).each do |order|
      order.tickets.each do |ticket|
        most_expensive = ticket.price if ticket.price > most_expensive
      end
    end
    most_expensive
  end

  def last_event
    orders.order(:created_at).last.tickets.last.event.name
  end
end
