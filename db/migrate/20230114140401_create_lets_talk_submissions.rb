class CreateLetsTalkSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :lets_talk_submissions do |t|
      t.string :fullname
      t.string :email
      t.text :how_can_i_help

      t.timestamps
    end
  end
end
