class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.references :user, foreign_key: true
      t.integer :p_a
      t.integer :p_c
      t.integer :p_o
      t.integer :p_n
      t.integer :p_e

      t.timestamps
    end
  end
end
