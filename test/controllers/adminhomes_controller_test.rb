require 'test_helper'

class AdminhomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adminhome = adminhomes(:one)
  end

  test "should get index" do
    get adminhomes_url
    assert_response :success
  end

  test "should get new" do
    get new_adminhome_url
    assert_response :success
  end

  test "should create adminhome" do
    assert_difference('Adminhome.count') do
      post adminhomes_url, params: { adminhome: {  } }
    end

    assert_redirected_to adminhome_url(Adminhome.last)
  end

  test "should show adminhome" do
    get adminhome_url(@adminhome)
    assert_response :success
  end

  test "should get edit" do
    get edit_adminhome_url(@adminhome)
    assert_response :success
  end

  test "should update adminhome" do
    patch adminhome_url(@adminhome), params: { adminhome: {  } }
    assert_redirected_to adminhome_url(@adminhome)
  end

  test "should destroy adminhome" do
    assert_difference('Adminhome.count', -1) do
      delete adminhome_url(@adminhome)
    end

    assert_redirected_to adminhomes_url
  end
end
