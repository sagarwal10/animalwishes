class AddSuperUserToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :superUser, :boolean, default: false
  end
end
