json.extract! aluno, :id, :nome, :email, :telefone, :peso, :altura, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)