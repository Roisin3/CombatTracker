class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :race
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha
      t.integer :strsv
      t.integer :dexsv
      t.integer :consv
      t.integer :intsv
      t.integer :wissv
      t.integer :chasv
      t.integer :init
      t.integer :ac
      t.integer :passins
      t.integer :passperc
      t.integer :passinv
      t.integer :profbonus
      t.text :spells
      t.integer :hp
      t.integer :lvl

      t.timestamps
    end
  end
end
