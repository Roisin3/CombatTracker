class CreateMobs < ActiveRecord::Migration[6.0]
  def change
    create_table :mobs do |t|
      t.string :name
      t.string :race
      t.string :type
      t.string :resist
      t.string :immune
      t.integer :attack
      t.integer :dmg
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
      t.integer :cr

      t.timestamps
    end
  end
end
