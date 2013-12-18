require 'test_helper'

class ScompsControllerTest < ActionController::TestCase
  setup do
    @scomp = scomps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scomps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scomp" do
    assert_difference('Scomp.count') do
      post :create, scomp: { address: @scomp.address, building_class: @scomp.building_class, building_type: @scomp.building_type, buyer: @scomp.buyer, buyer_agent: @scomp.buyer_agent, buyer_broker: @scomp.buyer_broker, cap_rate: @scomp.cap_rate, city: @scomp.city, closing_date: @scomp.closing_date, floors: @scomp.floors, listing_agent: @scomp.listing_agent, listing_broker: @scomp.listing_broker, notes: @scomp.notes, sale_price: @scomp.sale_price, sale_type: @scomp.sale_type, seller: @scomp.seller, size: @scomp.size }
    end

    assert_redirected_to scomp_path(assigns(:scomp))
  end

  test "should show scomp" do
    get :show, id: @scomp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scomp
    assert_response :success
  end

  test "should update scomp" do
    patch :update, id: @scomp, scomp: { address: @scomp.address, building_class: @scomp.building_class, building_type: @scomp.building_type, buyer: @scomp.buyer, buyer_agent: @scomp.buyer_agent, buyer_broker: @scomp.buyer_broker, cap_rate: @scomp.cap_rate, city: @scomp.city, closing_date: @scomp.closing_date, floors: @scomp.floors, listing_agent: @scomp.listing_agent, listing_broker: @scomp.listing_broker, notes: @scomp.notes, sale_price: @scomp.sale_price, sale_type: @scomp.sale_type, seller: @scomp.seller, size: @scomp.size }
    assert_redirected_to scomp_path(assigns(:scomp))
  end

  test "should destroy scomp" do
    assert_difference('Scomp.count', -1) do
      delete :destroy, id: @scomp
    end

    assert_redirected_to scomps_path
  end
end
