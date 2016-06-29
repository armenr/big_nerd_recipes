class CreateAdminWhitelistConstraints < ActiveRecord::Migration
  def change
    create_table :admin_whitelist_constraints do |t|

      t.timestamps null: false
    end
  end
end
