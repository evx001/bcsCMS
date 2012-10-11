require 'test_helper'

class AwardsControllerTest < ActionController::TestCase
  setup do
    @award = awards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:awards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create award" do
    assert_difference('Award.count') do
      post :create, award: { admission_date: @award.admission_date, bcs_key: @award.bcs_key, city_state_zip: @award.city_state_zip, client_id: @award.client_id, date_of_birth: @award.date_of_birth, emergency_contact: @award.emergency_contact, emergency_contact_relation: @award.emergency_contact_relation, intake_date: @award.intake_date, monthly_income_at_admission: @award.monthly_income_at_admission, name_last_first: @award.name_last_first, phone: @award.phone, program: @award.program, race: @award.race, referred_by: @award.referred_by }
    end

    assert_redirected_to award_path(assigns(:award))
  end

  test "should show award" do
    get :show, id: @award
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @award
    assert_response :success
  end

  test "should update award" do
    put :update, id: @award, award: { admission_date: @award.admission_date, bcs_key: @award.bcs_key, city_state_zip: @award.city_state_zip, client_id: @award.client_id, date_of_birth: @award.date_of_birth, emergency_contact: @award.emergency_contact, emergency_contact_relation: @award.emergency_contact_relation, intake_date: @award.intake_date, monthly_income_at_admission: @award.monthly_income_at_admission, name_last_first: @award.name_last_first, phone: @award.phone, program: @award.program, race: @award.race, referred_by: @award.referred_by }
    assert_redirected_to award_path(assigns(:award))
  end

  test "should destroy award" do
    assert_difference('Award.count', -1) do
      delete :destroy, id: @award
    end

    assert_redirected_to awards_path
  end
end
