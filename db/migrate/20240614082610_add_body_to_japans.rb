class AddBodyToJapans < ActiveRecord::Migration[6.1]
  def change
    add_column :japans, :body, :text
  end
end
