class CreateAdminViews < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_views do |t|

      t.timestamps
    end
  end
end
