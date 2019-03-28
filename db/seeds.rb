# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Pedro", last_name: "Perez", email: "pedro@email.com", phone: "683648967", password: "abc123", address: "Calle 123")
user2 = User.create(name: "Pablo", last_name: "Rojas", email: "pablo@email.com", phone: "856758868", password: "123jkl", address: "Calle 9754")
user3 = User.create(name: "Jorge", last_name: "Hernandez", email: "jorge@email.com", phone: "674646756", password: "password", address: "Avenida 2387")
user4 = User.create(name: "Juan", last_name: "Errazuriz", email: "juan@email.com", phone: "874436865", password: "asdf", address: "Camino 2311")
user5 = User.create(name: "Francisco", last_name: "Jimenez", email: "francisco@email.com", phone: "345786774", password: "5bi8673cjk75", address: "Camino 29033")

venue1 = Venue.create(name: "Estadio", address: "Avenida Estadio 276", capacity: 4000)
venue2 = Venue.create(name: "Teatro", address: "Camino Teatro 879", capacity: 500)

event1 = Event.create(name: "Partido", description: "Partido entre equipo 1 y equipo 2.", start_date: "2019-02-08 07:00:00", venue: venue1)
event2 = Event.create(name: "Concierto", description: "Concierto de música al aire libre.", start_date: "2019-03-15 20:00:00", venue: venue1)
event3 = Event.create(name: "Obra", description: "Clásica obra de teatro.", start_date: "2019-04-04 17:00:00", venue: venue2)

ticket1 = Ticket.create(event: event1, price: 20000.0, category: "Galeria")
ticket2 = Ticket.create(event: event1, price: 30000.0, category: "Platea")
ticket3 = Ticket.create(event: event1, price: 45000.0, category: "Box")
ticket4 = Ticket.create(event: event2, price: 30000.0, category: "Galeria")
ticket5 = Ticket.create(event: event2, price: 40000.0, category: "Platea")
ticket6 = Ticket.create(event: event2, price: 50000.0, category: "Cancha")
ticket7 = Ticket.create(event: event3, price: 15000.0, category: "Galeria")
ticket8 = Ticket.create(event: event3, price: 25000.0, category: "Platea")
ticket9 = Ticket.create(event: event3, price: 35000.0, category: "Palco")

order1 = Order.create(user: user1, total_paid: 65000.0)
order2 = Order.create(user: user2, total_paid: 105000.0)
order3 = Order.create(user: user3, total_paid: 90000.0)
order4 = Order.create(user: user4, total_paid: 95000.0)
order5 = Order.create(user: user5, total_paid: 95000.0)

order_ticket1 = OrderTicket.create(order: order1, ticket: ticket1, quantity: 1)
order_ticket2 = OrderTicket.create(order: order1, ticket: ticket4, quantity: 1)
order_ticket3 = OrderTicket.create(order: order1, ticket: ticket7, quantity: 1)
order_ticket4 = OrderTicket.create(order: order2, ticket: ticket2, quantity: 1)
order_ticket5 = OrderTicket.create(order: order2, ticket: ticket6, quantity: 1)
order_ticket6 = OrderTicket.create(order: order2, ticket: ticket8, quantity: 1)
order_ticket7 = OrderTicket.create(order: order3, ticket: ticket3, quantity: 1)
order_ticket8 = OrderTicket.create(order: order3, ticket: ticket4, quantity: 1)
order_ticket9 = OrderTicket.create(order: order3, ticket: ticket7, quantity: 1)
order_ticket10 = OrderTicket.create(order: order4, ticket: ticket1, quantity: 1)
order_ticket11 = OrderTicket.create(order: order4, ticket: ticket5, quantity: 1)
order_ticket12 = OrderTicket.create(order: order4, ticket: ticket9, quantity: 1)
order_ticket13 = OrderTicket.create(order: order5, ticket: ticket2, quantity: 1)
order_ticket14 = OrderTicket.create(order: order5, ticket: ticket5, quantity: 1)
order_ticket15 = OrderTicket.create(order: order5, ticket: ticket8, quantity: 1)
