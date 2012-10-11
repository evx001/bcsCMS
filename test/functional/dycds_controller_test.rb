require 'test_helper'

class DycdsControllerTest < ActionController::TestCase
  setup do
    @dycd = dycds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dycds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dycd" do
    assert_difference('Dycd.count') do
      post :create, dycd: { address: @dycd.address, apartment: @dycd.apartment, bcs_key: @dycd.bcs_key, birth_date: @dycd.birth_date, borough: @dycd.borough, elementary: @dycd.elementary, enrollment_date: @dycd.enrollment_date, ethnicity: @dycd.ethnicity, first_name: @dycd.first_name, funded: @dycd.funded, gender: @dycd.gender, grade: @dycd.grade, grade_level: @dycd.grade_level, last_name: @dycd.last_name, primary_language: @dycd.primary_language, program_period: @dycd.program_period, school_attending: @dycd.school_attending, school_year: @dycd.school_year, zip_code: @dycd.zip_code }
    end

    assert_redirected_to dycd_path(assigns(:dycd))
  end

  test "should show dycd" do
    get :show, id: @dycd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dycd
    assert_response :success
  end

  test "should update dycd" do
    put :update, id: @dycd, dycd: { address: @dycd.address, apartment: @dycd.apartment, bcs_key: @dycd.bcs_key, birth_date: @dycd.birth_date, borough: @dycd.borough, elementary: @dycd.elementary, enrollment_date: @dycd.enrollment_date, ethnicity: @dycd.ethnicity, first_name: @dycd.first_name, funded: @dycd.funded, gender: @dycd.gender, grade: @dycd.grade, grade_level: @dycd.grade_level, last_name: @dycd.last_name, primary_language: @dycd.primary_language, program_period: @dycd.program_period, school_attending: @dycd.school_attending, school_year: @dycd.school_year, zip_code: @dycd.zip_code }
    assert_redirected_to dycd_path(assigns(:dycd))
  end

  test "should destroy dycd" do
    assert_difference('Dycd.count', -1) do
      delete :destroy, id: @dycd
    end

    assert_redirected_to dycds_path
  end
end
