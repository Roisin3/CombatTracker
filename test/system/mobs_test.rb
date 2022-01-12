require "application_system_test_case"

class MobsTest < ApplicationSystemTestCase
  setup do
    @mob = mobs(:one)
  end

  test "visiting the index" do
    visit mobs_url
    assert_selector "h1", text: "Mobs"
  end

  test "creating a Mob" do
    visit mobs_url
    click_on "New Mob"

    fill_in "Ac", with: @mob.ac
    fill_in "Attack", with: @mob.attack
    fill_in "Cha", with: @mob.cha
    fill_in "Chasv", with: @mob.chasv
    fill_in "Con", with: @mob.con
    fill_in "Consv", with: @mob.consv
    fill_in "Cr", with: @mob.cr
    fill_in "Dex", with: @mob.dex
    fill_in "Dexsv", with: @mob.dexsv
    fill_in "Dmg", with: @mob.dmg
    fill_in "Hp", with: @mob.hp
    fill_in "Immune", with: @mob.immune
    fill_in "Init", with: @mob.init
    fill_in "Int", with: @mob.int
    fill_in "Intsv", with: @mob.intsv
    fill_in "Name", with: @mob.name
    fill_in "Passins", with: @mob.passins
    fill_in "Passinv", with: @mob.passinv
    fill_in "Passperc", with: @mob.passperc
    fill_in "Profbonus", with: @mob.profbonus
    fill_in "Race", with: @mob.race
    fill_in "Resist", with: @mob.resist
    fill_in "Spells", with: @mob.spells
    fill_in "Str", with: @mob.str
    fill_in "Strsv", with: @mob.strsv
    fill_in "Type", with: @mob.type
    fill_in "Wis", with: @mob.wis
    fill_in "Wissv", with: @mob.wissv
    click_on "Create Mob"

    assert_text "Mob was successfully created"
    click_on "Back"
  end

  test "updating a Mob" do
    visit mobs_url
    click_on "Edit", match: :first

    fill_in "Ac", with: @mob.ac
    fill_in "Attack", with: @mob.attack
    fill_in "Cha", with: @mob.cha
    fill_in "Chasv", with: @mob.chasv
    fill_in "Con", with: @mob.con
    fill_in "Consv", with: @mob.consv
    fill_in "Cr", with: @mob.cr
    fill_in "Dex", with: @mob.dex
    fill_in "Dexsv", with: @mob.dexsv
    fill_in "Dmg", with: @mob.dmg
    fill_in "Hp", with: @mob.hp
    fill_in "Immune", with: @mob.immune
    fill_in "Init", with: @mob.init
    fill_in "Int", with: @mob.int
    fill_in "Intsv", with: @mob.intsv
    fill_in "Name", with: @mob.name
    fill_in "Passins", with: @mob.passins
    fill_in "Passinv", with: @mob.passinv
    fill_in "Passperc", with: @mob.passperc
    fill_in "Profbonus", with: @mob.profbonus
    fill_in "Race", with: @mob.race
    fill_in "Resist", with: @mob.resist
    fill_in "Spells", with: @mob.spells
    fill_in "Str", with: @mob.str
    fill_in "Strsv", with: @mob.strsv
    fill_in "Type", with: @mob.type
    fill_in "Wis", with: @mob.wis
    fill_in "Wissv", with: @mob.wissv
    click_on "Update Mob"

    assert_text "Mob was successfully updated"
    click_on "Back"
  end

  test "destroying a Mob" do
    visit mobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mob was successfully destroyed"
  end
end
