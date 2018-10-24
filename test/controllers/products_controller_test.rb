require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get show" do
    get product_url(Product.first)
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { name: 'test product', description: 'please pass', price_in_cents: 40 } }
    end

    assert_redirected_to product_path(Product.last)
  end
end

# name: MyString
# description: MyText
# price_in_cents: 1
