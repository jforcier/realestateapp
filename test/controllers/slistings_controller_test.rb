require 'test_helper'

class SlistingsControllerTest < ActionController::TestCase
  setup do
    @slisting = slistings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slistings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slisting" do
    assert_difference('Slisting.count') do
      post :create, slisting: { address: @slisting.address, brokerage: @slisting.brokerage, building_class: @slisting.building_class, building_type: @slisting.building_type, city: @slisting.city, floors: @slisting.floors, notes: @slisting.notes, parking_string: @slisting.parking_string, price: @slisting.price, sale_type: @slisting.sale_type, size: @slisting.size }
    end

    assert_redirected_to slisting_path(assigns(:slisting))
  end

  test "should show slisting" do
    get :show, id: @slisting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slisting
    assert_response :success
  end

  test "should update slisting" do
    patch :update, id: @slisting, slisting: { address: @slisting.address, brokerage: @slisting.brokerage, building_class: @slisting.building_class, building_type: @slisting.building_type, city: @slisting.city, floors: @slisting.floors, notes: @slisting.notes, parking_string: @slisting.parking_string, price: @slisting.price, sale_type: @slisting.sale_type, size: @slisting.size }
    assert_redirected_to slisting_path(assigns(:slisting))
  end

  test "should destroy slisting" do
    assert_difference('Slisting.count', -1) do
      delete :destroy, id: @slisting
    end

    assert_redirected_to slistings_path
  end
end
