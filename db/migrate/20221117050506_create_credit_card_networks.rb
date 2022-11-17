class CreateCreditCardNetworks < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_card_networks do |t|
      t.string :name

      t.timestamps
    end
  end
end
