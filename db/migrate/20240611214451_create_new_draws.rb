class CreateNewDraws < ActiveRecord::Migration[7.1]
  def change
    create_table :new_draws do |t|
      t.string :title, limit: 150
      t.string :min_value, limit: 100
      t.string :max_value, limit: 100
      t.string :date_draw, limit: 100
      t.string :date_present, limit: 100
      t.string :description, limit: 200

      t.timestamps
    end
  end
end
