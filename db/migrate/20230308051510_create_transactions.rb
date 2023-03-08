class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :users, null: false, foreign_key: true
      t.references :acomptes, null: false, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
