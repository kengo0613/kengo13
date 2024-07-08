class AddYoutubeUrlToJapans < ActiveRecord::Migration[6.1]
  def change
    add_column :japans, :youtube_url, :string
  end
end
