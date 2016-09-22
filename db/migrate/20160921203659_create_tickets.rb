class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :full_name, null: false
      t.string :phone_number
      t.string :email, null: false
      t.string :subject, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
