class AddIsAdminToUsers < ActiveRecord::Migration[5.0]
  def change
  add_column :users, :telefone, :string
   add_column :users, :peso, :string
   add_column :users, :altura, :string
   add_column :users, :nome, :string
   add_column :users, :is_admin, :boolean
  end
end
