class AddAttachmentPictureToAnimals < ActiveRecord::Migration
  def self.up
    change_table :animals do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :animals, :picture
  end
end
