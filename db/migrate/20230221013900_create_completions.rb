class CreateCompletions < ActiveRecord::Migration[7.0]
  def change
    create_table :completions do |t|
      t.references :enrollment, null: false, foreign_key: true
      t.float :mark, null: false
      t.boolean :completed, null: false
      t.datetime :completion_date, null: false
      t.timestamps
    end
  end
end
