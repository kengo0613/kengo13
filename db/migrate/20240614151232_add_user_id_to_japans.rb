class AddUserIdToJapans < ActiveRecord::Migration[6.1]
  def change
    add_column :japans, :user_id, :integer
    Japan.reset_column_information
    Japan.all.each do |japan|
      japan.update(user_id: User.first.id) # 適切なデフォルトユーザーを設定
    end
  end
end
