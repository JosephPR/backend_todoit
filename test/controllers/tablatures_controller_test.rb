require 'test_helper'

class TablaturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tablature = tablatures(:one)
  end

  test "should get index" do
    get tablatures_url, as: :json
    assert_response :success
  end

  test "should create tablature" do
    assert_difference('Tablature.count') do
      post tablatures_url, params: { tablature: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show tablature" do
    get tablature_url(@tablature), as: :json
    assert_response :success
  end

  test "should update tablature" do
    patch tablature_url(@tablature), params: { tablature: {  } }, as: :json
    assert_response 200
  end

  test "should destroy tablature" do
    assert_difference('Tablature.count', -1) do
      delete tablature_url(@tablature), as: :json
    end

    assert_response 204
  end
end
