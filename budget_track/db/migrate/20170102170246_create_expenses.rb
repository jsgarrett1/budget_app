class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.references :user, foreign_key: true
      t.text :description
      t.integer :amount

      t.timestamps
    end
  end
end
