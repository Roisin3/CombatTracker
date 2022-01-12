require "application_system_test_case"

class PlayersTest < ApplicationSystemTestCase
  setup do
    @player = players(:one)
  end

  test "visiting the index" do
    visit players_url
    assert_selector "h1", text: "Players"
  end

  test "creating a Player" do
    visit players_url
    click_on "New Player"

    fill_in "Ac", with: @player.ac
    fill_in "Cha", with: @player.cha
    fill_in "Chasv", with: @player.chasv
    fill_in "Con", with: @player.con
    fill_in "Consv", with: @player.consv
    fill_in "Dex", with: @player.dex
    fill_in "Dexsv", with: @player.dexsv
    fill_in "Hp", with: @player.hp
    fill_in "Init", with: @player.init
    fill_in "Int", with: @player.int
    fill_in "Intsv", with: @player.intsv
    fill_in "Lvl", with: @player.lvl
    fill_in "Name", with: @player.name
    fill_in "Passins", with: @player.passins
    fill_in "Passinv", with: @player.passinv
    fill_in "Passperc", with: @player.passperc
    fill_in "Profbonus", with: @player.profbonus
    fill_in "Race", with: @player.race
    fill_in "Spells", with: @player.spells
    fill_in "Str", with: @player.str
    fill_in "Strsv", with: @player.strsv
    fill_in "Wis", with: @player.wis
    fill_in "Wissv", with: @player.wissv
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "updating a Player" do
    visit players_url
    click_on "Edit", match: :first

    fill_in "Ac", with: @player.ac
    fill_in "Cha", with: @player.cha
    fill_in "Chasv", with: @player.chasv
    fill_in "Con", with: @player.con
    fill_in "Consv", with: @player.consv
    fill_in "Dex", with: @player.dex
    fill_in "Dexsv", with: @player.dexsv
    fill_in "Hp", with: @player.hp
    fill_in "Init", with: @player.init
    fill_in "Int", with: @player.int
    fill_in "Intsv", with: @player.intsv
    fill_in "Lvl", with: @player.lvl
    fill_in "Name", with: @player.name
    fill_in "Passins", with: @player.passins
    fill_in "Passinv", with: @player.passinv
    fill_in "Passperc", with: @player.passperc
    fill_in "Profbonus", with: @player.profbonus
    fill_in "Race", with: @player.race
    fill_in "Spells", with: @player.spells
    fill_in "Str", with: @player.str
    fill_in "Strsv", with: @player.strsv
    fill_in "Wis", with: @player.wis
    fill_in "Wissv", with: @player.wissv
    click_on "Update Player"

    assert_text "Player was successfully updated"
    click_on "Back"
  end

  test "destroying a Player" do
    visit players_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player was successfully destroyed"
  end
end
