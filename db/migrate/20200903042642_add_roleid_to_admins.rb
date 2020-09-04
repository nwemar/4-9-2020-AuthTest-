class AddRoleidToAdmins < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :roleid, :integer
  end
end
