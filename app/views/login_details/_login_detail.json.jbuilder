json.extract! login_detail, :id, :user_name, :password, :person_id, :created_at, :updated_at
json.url login_detail_url(login_detail, format: :json)