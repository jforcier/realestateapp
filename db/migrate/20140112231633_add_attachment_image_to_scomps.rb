class AddAttachmentImageToScomps < ActiveRecord::Migration
  def self.up
    change_table :scomps do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :scomps, :image
  end
end
