class CreateAttractives < ActiveRecord::Migration[5.2]
  def change
    create_table :attractives do |t|
      t.string :name
      t.string :address
      t.integer :duration
      t.integer :capacity
      t.float :value
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
