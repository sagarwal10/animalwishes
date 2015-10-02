class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.string :summary
      t.text :fullDescription
      t.decimal :amount
      t.decimal :amountRaised

      t.timestamps null: false
    end
  end
end
