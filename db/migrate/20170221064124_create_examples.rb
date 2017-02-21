class CreateExamples < ActiveRecord::Migration[5.0]
  def change
    create_table :examples do |t|
      t.string :sentence
      t.integer :word_id

      t.timestamps
    end
  end
end
