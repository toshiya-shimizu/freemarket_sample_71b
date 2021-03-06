class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name, null:false
      t.string :family_name, null:false
      t.string :first_name_kana, null:false
      t.string :family_name_kana, null:false
      t.string :birth_year, null:false
      t.string :birth_month, null:false
      t.string :birth_day, null:false
      t.text :introduction
      t.string :avatar
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
