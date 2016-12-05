json.extract! user, :id, :nome, :email, :telefone, :peso, :altura, :created_at, :updated_at
json.url user_url(user, format: :json)
