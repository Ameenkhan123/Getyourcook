require 'test_helper'

class CookCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cook_category = cook_categories(:one)
  end

  test "should get index" do
    get cook_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_cook_category_url
    assert_response :success
  end

  test "should create cook_category" do
    assert_difference('CookCategory.count') do
      post cook_categories_url, params: { cook_category: { description: @cook_category.description, name: @cook_category.name } }
    end

    assert_redirected_to cook_category_url(CookCategory.last)
  end

  test "should show cook_category" do
    get cook_category_url(@cook_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_cook_category_url(@cook_category)
    assert_response :success
  end

  test "should update cook_category" do
    patch cook_category_url(@cook_category), params: { cook_category: { description: @cook_category.description, name: @cook_category.name } }
    assert_redirected_to cook_category_url(@cook_category)
  end

  test "should destroy cook_category" do
    assert_difference('CookCategory.count', -1) do
      delete cook_category_url(@cook_category)
    end

    assert_redirected_to cook_categories_url
  end
end
