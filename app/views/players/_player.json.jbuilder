json.extract! player, :id, :name, :race, :str, :dex, :con, :int, :wis, :cha, :strsv, :dexsv, :consv, :intsv, :wissv, :chasv, :init, :ac, :passins, :passperc, :passinv, :profbonus, :spells, :hp, :lvl, :created_at, :updated_at
json.url player_url(player, format: :json)
