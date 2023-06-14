json.extract! ticket, :id, :category_id, :sub_category_id, :work_unit_id, :issued_by, :description, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
