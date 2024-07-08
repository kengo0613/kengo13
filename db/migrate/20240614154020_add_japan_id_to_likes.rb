class AddJapanIdToLikes < ActiveRecord::Migration[6.1]
  def change
    add_column :likes, :japan_id, :integer
    add_index :likes, :japan_id
  end
end
