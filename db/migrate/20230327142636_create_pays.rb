class CreatePays < ActiveRecord::Migration[6.1]
  def change
    create_table :pays do |t|
      t.string :status
      t.string :amount
      t.string :method

      t.references :book, null: false, foreign_key: true
      t.references :usr, null: false, foreign_key: true

      t.timestamps
    end
  end
end
