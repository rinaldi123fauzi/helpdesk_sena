json.extract! sender_email, :id, :email_to, :parent_id, :token, :status, :created_at, :updated_at
json.url sender_email_url(sender_email, format: :json)
