require 'test_helper'

class AppFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "can see the index" do
    get "/"
    assert_select "h1", "Products"
  end

  test "can create product" do
    get "/products/new"
    assert_response :success

    post "/products",
      params: { product: { name: "can create", description: "article successfully", price_in_cents: '5' }}

      assert_response :redirect
      follow_redirect!
      assert_response :success
      assert_select "li", "can create"

  end
  # name: MyString
  # description: MyText
  # price_in_cents: 1
end
