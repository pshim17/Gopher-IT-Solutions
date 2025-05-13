class CreateTickets < ActiveRecord::Migration[7.2]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
