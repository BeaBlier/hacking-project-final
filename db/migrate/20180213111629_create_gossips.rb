class CreateGossips < ActiveRecord::Migration[5.1]
  def change
    create_table :gossips do |t|
      t.text :content
      t.belongs_to :moussaillon
      t.timestamps
    end
  end
end
