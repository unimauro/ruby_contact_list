class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_of_birth, :telephone, :address, :credit_card_number, :email
  has_one :import_status
  has_one :user
  has_one :credit_card_network
end
