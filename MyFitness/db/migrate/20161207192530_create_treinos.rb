class CreateTreinos < ActiveRecord::Migration[5.0]
  def change
    create_table :treinos do |t|
      t.string :inferior
      t.string :triceps
      t.string :abslombar
      t.string :dorsais
      t.string :deltoides
      t.string :biceps
      t.string :peitorais
      t.integer :series
      t.integer :repeticoes
      t.string :email

      t.timestamps
    end
  end
end
