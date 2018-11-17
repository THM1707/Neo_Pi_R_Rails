class ChangeDataTypeForAdvice < ActiveRecord::Migration[5.2]
  def self.up
    change_table :results do |t|
      t.change :advice, :text
    end
  end

  def self.down
    change_table :results do |t|
      t.change :advice, :string
    end
  end
end
