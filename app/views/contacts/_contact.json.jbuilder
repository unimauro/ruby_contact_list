json.extract! contact, :id, :name, :date_of_birth, :telephone, :address, :credit_card_number, :email, :import_status_id, :user_id, :credit_card_network_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
