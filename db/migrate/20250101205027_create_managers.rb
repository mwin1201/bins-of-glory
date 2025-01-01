class CreateManagers < ActiveRecord::Migration[8.0]
  def change
    create_table :managers do |t|
      t.string :team_name
      t.string :password
      t.integer :primary_league_id
      t.integer :entry_id
      t.integer :fpl_id
      t.integer :secondary_league_id
      t.string :avatar

      t.timestamps
    end
  end
end
