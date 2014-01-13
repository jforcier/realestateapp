class AddAttachmentImageToSlistings < ActiveRecord::Migration
  def self.up
    change_table :slistings do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :slistings, :image
  end
end
