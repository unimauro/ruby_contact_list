class Contact < ApplicationRecord
  belongs_to :import_status
  belongs_to :user
  belongs_to :credit_card_network
end
