class CreateJoinTableOrderTicket < ActiveRecord::Migration[5.2]
  def change
    create_join_table :orders, :tickets do |t|
      # t.index [:order_id, :ticket_id]
      # t.index [:ticket_id, :order_id]
    end
  end
end
