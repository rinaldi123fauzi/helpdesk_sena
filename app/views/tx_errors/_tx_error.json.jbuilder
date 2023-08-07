json.extract! tx_error, :id, :description, :created_at, :updated_at
json.url tx_error_url(tx_error, format: :json)
