class AddJapanIdToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :japan_id, :integer
  end
end
