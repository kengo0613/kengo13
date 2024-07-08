class CreateJapans < ActiveRecord::Migration[6.1]
  def change
    create_table :japans do |t|
      t.integer :number
      t.string :comment
      t.date :date
      t.string :guest

      t.timestamps
    end
  end
end
