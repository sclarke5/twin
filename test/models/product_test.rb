require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_product_should_save
    product = Product.new
    assert_not product.save
  end

  def test_product_object_is_a_product
    product = Product.new
    assert_kind_of(Product,product)
  end

end
