class CreateAllSecretsFriends < ActiveRecord::Migration[7.1]
  def change
    create_table :all_secrets_friends do |t|
      t.string :name, limit: 200
      t.string :email, limit: 150
      t.boolean :draw_create
      t.references :draw, null: false, foreign_key: true

      t.timestamps
    end
  end
end
