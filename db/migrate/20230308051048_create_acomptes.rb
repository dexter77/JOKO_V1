class CreateAcomptes < ActiveRecord::Migration[7.0]
  def change
    create_table :acomptes do |t|
      t.integer :acompte_number
      t.integer :balance
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
