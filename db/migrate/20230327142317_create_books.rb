class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :phone
      t.string :date
      t.string :capacity

      t.decimal :price

      
      t.references :destnation, null: false, foreign_key: true
      t.references :usr, null: false, foreign_key: true

      t.timestamps
    end
  end
end
