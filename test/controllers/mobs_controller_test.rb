require 'test_helper'

class MobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mob = mobs(:one)
  end

  test "should get index" do
    get mobs_url
    assert_response :success
  end

  test "should get new" do
    get new_mob_url
    assert_response :success
  end

  test "should create mob" do
    assert_difference('Mob.count') do
      post mobs_url, params: { mob: { ac: @mob.ac, attack: @mob.attack, cha: @mob.cha, chasv: @mob.chasv, con: @mob.con, consv: @mob.consv, cr: @mob.cr, dex: @mob.dex, dexsv: @mob.dexsv, dmg: @mob.dmg, hp: @mob.hp, immune: @mob.immune, init: @mob.init, int: @mob.int, intsv: @mob.intsv, name: @mob.name, passins: @mob.passins, passinv: @mob.passinv, passperc: @mob.passperc, profbonus: @mob.profbonus, race: @mob.race, resist: @mob.resist, spells: @mob.spells, str: @mob.str, strsv: @mob.strsv, type: @mob.type, wis: @mob.wis, wissv: @mob.wissv } }
    end

    assert_redirected_to mob_url(Mob.last)
  end

  test "should show mob" do
    get mob_url(@mob)
    assert_response :success
  end

  test "should get edit" do
    get edit_mob_url(@mob)
    assert_response :success
  end

  test "should update mob" do
    patch mob_url(@mob), params: { mob: { ac: @mob.ac, attack: @mob.attack, cha: @mob.cha, chasv: @mob.chasv, con: @mob.con, consv: @mob.consv, cr: @mob.cr, dex: @mob.dex, dexsv: @mob.dexsv, dmg: @mob.dmg, hp: @mob.hp, immune: @mob.immune, init: @mob.init, int: @mob.int, intsv: @mob.intsv, name: @mob.name, passins: @mob.passins, passinv: @mob.passinv, passperc: @mob.passperc, profbonus: @mob.profbonus, race: @mob.race, resist: @mob.resist, spells: @mob.spells, str: @mob.str, strsv: @mob.strsv, type: @mob.type, wis: @mob.wis, wissv: @mob.wissv } }
    assert_redirected_to mob_url(@mob)
  end

  test "should destroy mob" do
    assert_difference('Mob.count', -1) do
      delete mob_url(@mob)
    end

    assert_redirected_to mobs_url
  end
end
