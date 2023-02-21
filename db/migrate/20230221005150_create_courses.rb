class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :desc
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
