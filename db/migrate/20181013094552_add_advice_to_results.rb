class AddAdviceToResults < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :advice, :string
  end
end
