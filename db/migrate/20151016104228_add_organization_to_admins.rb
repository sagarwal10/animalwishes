class AddOrganizationToAdmins < ActiveRecord::Migration
  def change
    add_reference :admins, :organization, index: true, foreign_key: true
  end
end
