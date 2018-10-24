require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit products_url

    assert_selector "h1", text: "Products"
  end

  test "creating a product" do
    visit products_path

    click_on "New Product"

    fill_in "Name", with: "Creating product"
    fill_in "Description", with: "Should have worked"
    fill_in "Price in cents", with: 5

    click_on "Create Product"

    assert_text "Should have worked"
  end
end
