class CreateDonationRecords < ActiveRecord::Migration
  def change
    create_table :donation_records do |t|
      t.string :paypalKey
      t.string :senderEmail
      t.decimal :amount
      t.references :animal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
