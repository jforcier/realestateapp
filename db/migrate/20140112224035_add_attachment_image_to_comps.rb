class AddAttachmentImageToComps < ActiveRecord::Migration
  def self.up
    change_table :comps do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :comps, :image
  end
end
