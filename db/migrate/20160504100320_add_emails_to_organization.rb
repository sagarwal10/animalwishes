class AddEmailsToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :paypalEmail, :string
    add_column :organizations, :contactEmail, :string
  end
end
