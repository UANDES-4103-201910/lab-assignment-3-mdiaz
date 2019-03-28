class CreateOrderTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :order_tickets do |t|
      t.references :order, foreign_key: true
      t.references :ticket, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
