class AddAttachmentImageToAddFavorites < ActiveRecord::Migration
  def self.up
    change_table :add_favorites do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :add_favorites, :image
  end
end
