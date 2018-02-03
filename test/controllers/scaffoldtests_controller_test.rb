require 'test_helper'

class ScaffoldtestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scaffoldtest = scaffoldtests(:one)
  end

  test "should get index" do
    get scaffoldtests_url
    assert_response :success
  end

  test "should get new" do
    get new_scaffoldtest_url
    assert_response :success
  end

  test "should create scaffoldtest" do
    assert_difference('Scaffoldtest.count') do
      post scaffoldtests_url, params: { scaffoldtest: { content: @scaffoldtest.content } }
    end

    assert_redirected_to scaffoldtest_url(Scaffoldtest.last)
  end

  test "should show scaffoldtest" do
    get scaffoldtest_url(@scaffoldtest)
    assert_response :success
  end

  test "should get edit" do
    get edit_scaffoldtest_url(@scaffoldtest)
    assert_response :success
  end

  test "should update scaffoldtest" do
    patch scaffoldtest_url(@scaffoldtest), params: { scaffoldtest: { content: @scaffoldtest.content } }
    assert_redirected_to scaffoldtest_url(@scaffoldtest)
  end

  test "should destroy scaffoldtest" do
    assert_difference('Scaffoldtest.count', -1) do
      delete scaffoldtest_url(@scaffoldtest)
    end

    assert_redirected_to scaffoldtests_url
  end
end
