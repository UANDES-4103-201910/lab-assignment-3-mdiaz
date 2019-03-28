class Order < ApplicationRecord
  belongs_to :user
  has_many :order_tickets
  has_many :tickets, through: :order_tickets
end
