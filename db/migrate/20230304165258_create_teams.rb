class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :slug, index: true
      t.string :name

      t.string :manager_1_position
      t.string :manager_1_name
      t.string :manager_2_position
      t.string :manager_2_name
      t.string :manager_3_position
      t.string :manager_3_name
      t.string :manager_4_position
      t.string :manager_4_name

      t.string :fa_table_lrcode
      t.string :fa_table_division_season
      t.string :fa_fixture_lrcode
      t.string :fa_fixture_division_season

      t.json :players

      t.timestamps
    end
  end
end
