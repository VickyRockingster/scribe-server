class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :title, null: false
      t.text :text, null: false

      t.timestamps
    end
  end
end
