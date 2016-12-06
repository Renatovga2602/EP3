class CreateAlunos < ActiveRecord::Migration[5.0]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.float :peso
      t.float :altura

      t.timestamps
    end
  end
end
