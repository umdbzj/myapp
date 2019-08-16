class CreateReadings < ActiveRecord::Migration[5.1]
  def change
    create_table :readings do |t|
      t.string :author
      t.string :title
      t.string :assign
      t.integer :day

      t.timestamps
    end
  end
end
