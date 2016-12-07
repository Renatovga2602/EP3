class Treino < ApplicationRecord
  def self.search(search)
  where("email LIKE ?", "%#{search}%") 
end

end
