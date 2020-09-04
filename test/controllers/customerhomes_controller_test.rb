require 'test_helper'

class CustomerhomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customerhome = customerhomes(:one)
  end

  test "should get index" do
    get customerhomes_url
    assert_response :success
  end

  test "should get new" do
    get new_customerhome_url
    assert_response :success
  end

  test "should create customerhome" do
    assert_difference('Customerhome.count') do
      post customerhomes_url, params: { customerhome: {  } }
    end

    assert_redirected_to customerhome_url(Customerhome.last)
  end

  test "should show customerhome" do
    get customerhome_url(@customerhome)
    assert_response :success
  end

  test "should get edit" do
    get edit_customerhome_url(@customerhome)
    assert_response :success
  end

  test "should update customerhome" do
    patch customerhome_url(@customerhome), params: { customerhome: {  } }
    assert_redirected_to customerhome_url(@customerhome)
  end

  test "should destroy customerhome" do
    assert_difference('Customerhome.count', -1) do
      delete customerhome_url(@customerhome)
    end

    assert_redirected_to customerhomes_url
  end
end
