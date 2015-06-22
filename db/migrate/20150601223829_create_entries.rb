class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.date :date
      t.text :description
      t.float :amount

      t.timestamps null: false
    end
  end
end
