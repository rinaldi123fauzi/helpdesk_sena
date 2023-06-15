json.extract! ticket_chat, :id, :sender, :receiver, :description, :created_at, :updated_at
json.url ticket_chat_url(ticket_chat, format: :json)
