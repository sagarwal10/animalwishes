class AddNameToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :fullName, :string
  end
end
