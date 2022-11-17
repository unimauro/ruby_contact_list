class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.datetime :date_of_birth
      t.integer :telephone
      t.string :address
      t.integer :credit_card_number
      t.string :email
      t.references :import_status, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :credit_card_network, null: false, foreign_key: true

      t.timestamps
    end
  end
end
