require 'test_helper'

class DictionariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dictionary = dictionaries(:one)
  end

  test "should get index" do
    get dictionaries_url, as: :json
    assert_response :success
  end

  test "should create dictionary" do
    assert_difference('Dictionary.count') do
      post dictionaries_url, params: { dictionary: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show dictionary" do
    get dictionary_url(@dictionary), as: :json
    assert_response :success
  end

  test "should update dictionary" do
    patch dictionary_url(@dictionary), params: { dictionary: {  } }, as: :json
    assert_response 200
  end

  test "should destroy dictionary" do
    assert_difference('Dictionary.count', -1) do
      delete dictionary_url(@dictionary), as: :json
    end

    assert_response 204
  end
end
