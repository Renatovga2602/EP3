class Aluno < ApplicationRecord

  validates :nome, presence: true, length: { maximum: 50 }

  validates :telefone, presence: true, length: { maximum: 50 }

  validates :peso, presence: true, length: { maximum: 5 }

  validates :altura, presence: true, length: { maximum: 5 }

  before_save { self.email = email.downcase }
  validates :email, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create}, uniqueness: {case_sensitive: false}

end
