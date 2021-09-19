require "test_helper"

class DarbiniekisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @darbinieki = darbiniekis(:one)
  end

  test "should get index" do
    get darbiniekis_url
    assert_response :success
  end

  test "should get new" do
    get new_darbinieki_url
    assert_response :success
  end

  test "should create darbinieki" do
    assert_difference('Darbinieki.count') do
      post darbiniekis_url, params: { darbinieki: { beigu_laiks: @darbinieki.beigu_laiks, epasts: @darbinieki.epasts, starta_laiks: @darbinieki.starta_laiks, telefons: @darbinieki.telefons, uzvards: @darbinieki.uzvards, vards: @darbinieki.vards } }
    end

    assert_redirected_to darbinieki_url(Darbinieki.last)
  end

  test "should show darbinieki" do
    get darbinieki_url(@darbinieki)
    assert_response :success
  end

  test "should get edit" do
    get edit_darbinieki_url(@darbinieki)
    assert_response :success
  end

  test "should update darbinieki" do
    patch darbinieki_url(@darbinieki), params: { darbinieki: { beigu_laiks: @darbinieki.beigu_laiks, epasts: @darbinieki.epasts, starta_laiks: @darbinieki.starta_laiks, telefons: @darbinieki.telefons, uzvards: @darbinieki.uzvards, vards: @darbinieki.vards } }
    assert_redirected_to darbinieki_url(@darbinieki)
  end

  test "should destroy darbinieki" do
    assert_difference('Darbinieki.count', -1) do
      delete darbinieki_url(@darbinieki)
    end

    assert_redirected_to darbiniekis_url
  end
end
