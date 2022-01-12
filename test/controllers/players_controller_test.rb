require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get players_url
    assert_response :success
  end

  test "should get new" do
    get new_player_url
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post players_url, params: { player: { ac: @player.ac, cha: @player.cha, chasv: @player.chasv, con: @player.con, consv: @player.consv, dex: @player.dex, dexsv: @player.dexsv, hp: @player.hp, init: @player.init, int: @player.int, intsv: @player.intsv, lvl: @player.lvl, name: @player.name, passins: @player.passins, passinv: @player.passinv, passperc: @player.passperc, profbonus: @player.profbonus, race: @player.race, spells: @player.spells, str: @player.str, strsv: @player.strsv, wis: @player.wis, wissv: @player.wissv } }
    end

    assert_redirected_to player_url(Player.last)
  end

  test "should show player" do
    get player_url(@player)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_url(@player)
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { ac: @player.ac, cha: @player.cha, chasv: @player.chasv, con: @player.con, consv: @player.consv, dex: @player.dex, dexsv: @player.dexsv, hp: @player.hp, init: @player.init, int: @player.int, intsv: @player.intsv, lvl: @player.lvl, name: @player.name, passins: @player.passins, passinv: @player.passinv, passperc: @player.passperc, profbonus: @player.profbonus, race: @player.race, spells: @player.spells, str: @player.str, strsv: @player.strsv, wis: @player.wis, wissv: @player.wissv } }
    assert_redirected_to player_url(@player)
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete player_url(@player)
    end

    assert_redirected_to players_url
  end
end
