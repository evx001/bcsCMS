require 'test_helper'

class Democap60sControllerTest < ActionController::TestCase
  setup do
    @democap60 = democap60s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:democap60s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create democap60" do
    assert_difference('Democap60.count') do
      post :create, democap60: { amount_under_over_poverty: @democap60.amount_under_over_poverty, bcs_key: @democap60.bcs_key, birth_date: @democap60.birth_date, epc_points: @democap60.epc_points, ethnicity: @democap60.ethnicity, id: @democap60.id, name: @democap60.name, num_in_family: @democap60.num_in_family, percent_under_over_poverty: @democap60.percent_under_over_poverty, race: @democap60.race, yearly_income: @democap60.yearly_income }
    end

    assert_redirected_to democap60_path(assigns(:democap60))
  end

  test "should show democap60" do
    get :show, id: @democap60
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @democap60
    assert_response :success
  end

  test "should update democap60" do
    put :update, id: @democap60, democap60: { amount_under_over_poverty: @democap60.amount_under_over_poverty, bcs_key: @democap60.bcs_key, birth_date: @democap60.birth_date, epc_points: @democap60.epc_points, ethnicity: @democap60.ethnicity, id: @democap60.id, name: @democap60.name, num_in_family: @democap60.num_in_family, percent_under_over_poverty: @democap60.percent_under_over_poverty, race: @democap60.race, yearly_income: @democap60.yearly_income }
    assert_redirected_to democap60_path(assigns(:democap60))
  end

  test "should destroy democap60" do
    assert_difference('Democap60.count', -1) do
      delete :destroy, id: @democap60
    end

    assert_redirected_to democap60s_path
  end
end
