class AddMonthlySponsorshipToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :monthly_sponsorship, :boolean, :default => false
  end
end
