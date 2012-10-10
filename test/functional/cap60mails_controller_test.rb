require 'test_helper'

class Cap60mailsControllerTest < ActionController::TestCase
  setup do
    @cap60mail = cap60mails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cap60mails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cap60mail" do
    assert_difference('Cap60mail.count') do
      post :create, cap60mail: { address: @cap60mail.address, bcs_key: @cap60mail.bcs_key, birth_date: @cap60mail.birth_date, city: @cap60mail.city, home_phone: @cap60mail.home_phone, id: @cap60mail.id, name: @cap60mail.name, primary_caregiver: @cap60mail.primary_caregiver, state: @cap60mail.state, zipcode: @cap60mail.zipcode }
    end

    assert_redirected_to cap60mail_path(assigns(:cap60mail))
  end

  test "should show cap60mail" do
    get :show, id: @cap60mail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cap60mail
    assert_response :success
  end

  test "should update cap60mail" do
    put :update, id: @cap60mail, cap60mail: { address: @cap60mail.address, bcs_key: @cap60mail.bcs_key, birth_date: @cap60mail.birth_date, city: @cap60mail.city, home_phone: @cap60mail.home_phone, id: @cap60mail.id, name: @cap60mail.name, primary_caregiver: @cap60mail.primary_caregiver, state: @cap60mail.state, zipcode: @cap60mail.zipcode }
    assert_redirected_to cap60mail_path(assigns(:cap60mail))
  end

  test "should destroy cap60mail" do
    assert_difference('Cap60mail.count', -1) do
      delete :destroy, id: @cap60mail
    end

    assert_redirected_to cap60mails_path
  end
end
