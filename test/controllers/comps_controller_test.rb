require 'test_helper'

class CompsControllerTest < ActionController::TestCase
  setup do
    @comp = comps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comp" do
    assert_difference('Comp.count') do
      post :create, comp: { address: @comp.address, city: @comp.city, effective_rate: @comp.effective_rate, landlord: @comp.landlord, lease_expiration: @comp.lease_expiration, lease_signed: @comp.lease_signed, lease_start: @comp.lease_start, listing_agent: @comp.listing_agent, listing_broker: @comp.listing_broker, opex: @comp.opex, procurring_agent: @comp.procurring_agent, procurring_broker: @comp.procurring_broker, size: @comp.size, start_rate: @comp.start_rate, suite: @comp.suite, tenant: @comp.tenant }
    end

    assert_redirected_to comp_path(assigns(:comp))
  end

  test "should show comp" do
    get :show, id: @comp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comp
    assert_response :success
  end

  test "should update comp" do
    patch :update, id: @comp, comp: { address: @comp.address, city: @comp.city, effective_rate: @comp.effective_rate, landlord: @comp.landlord, lease_expiration: @comp.lease_expiration, lease_signed: @comp.lease_signed, lease_start: @comp.lease_start, listing_agent: @comp.listing_agent, listing_broker: @comp.listing_broker, opex: @comp.opex, procurring_agent: @comp.procurring_agent, procurring_broker: @comp.procurring_broker, size: @comp.size, start_rate: @comp.start_rate, suite: @comp.suite, tenant: @comp.tenant }
    assert_redirected_to comp_path(assigns(:comp))
  end

  test "should destroy comp" do
    assert_difference('Comp.count', -1) do
      delete :destroy, id: @comp
    end

    assert_redirected_to comps_path
  end
end
