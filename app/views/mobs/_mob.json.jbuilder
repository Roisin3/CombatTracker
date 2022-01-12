json.extract! mob, :id, :name, :race, :type, :resist, :immune, :attack, :dmg, :str, :dex, :con, :int, :wis, :cha, :strsv, :dexsv, :consv, :intsv, :wissv, :chasv, :init, :ac, :passins, :passperc, :passinv, :profbonus, :spells, :hp, :cr, :created_at, :updated_at
json.url mob_url(mob, format: :json)
