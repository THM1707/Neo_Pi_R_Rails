class CreateRecommends < ActiveRecord::Migration[5.2]
  def change
    create_table :recommends do |t|
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
