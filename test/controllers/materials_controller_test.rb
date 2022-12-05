require "test_helper"

class MaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material = materials(:one)
  end

  test "should get index" do
    get materials_url, as: :json
    assert_response :success
  end

  test "should create material" do
    assert_difference("Material.count") do
      post materials_url, params: { material: { name: @material.name } }, as: :json
    end

    assert_response :created
  end

  test "should show material" do
    get material_url(@material), as: :json
    assert_response :success
  end

  test "should update material" do
    patch material_url(@material), params: { material: { name: @material.name } }, as: :json
    assert_response :success
  end

  test "should destroy material" do
    assert_difference("Material.count", -1) do
      delete material_url(@material), as: :json
    end

    assert_response :no_content
  end
end
