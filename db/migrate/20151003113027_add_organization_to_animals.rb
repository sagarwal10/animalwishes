class AddOrganizationToAnimals < ActiveRecord::Migration
  def change
    add_reference :animals, :organization, index: true, foreign_key: true
  end
end
