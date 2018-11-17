class RenameRecommendToAdvice < ActiveRecord::Migration[5.2]
  def change
    rename_table :recommends, :advices
  end
end
