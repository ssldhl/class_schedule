require 'test_helper'

class RoutinesControllerTest < ActionController::TestCase
  setup do
    @routine = routines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:routines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create routine" do
    assert_difference('Routine.count') do
      post :create, routine: { day: @routine.day, end_time: @routine.end_time, faculty: @routine.faculty, section: @routine.section, start_time: @routine.start_time, sub_name: @routine.sub_name, teacher_name: @routine.teacher_name, year: @routine.year }
    end

    assert_redirected_to routine_path(assigns(:routine))
  end

  test "should show routine" do
    get :show, id: @routine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @routine
    assert_response :success
  end

  test "should update routine" do
    put :update, id: @routine, routine: { day: @routine.day, end_time: @routine.end_time, faculty: @routine.faculty, section: @routine.section, start_time: @routine.start_time, sub_name: @routine.sub_name, teacher_name: @routine.teacher_name, year: @routine.year }
    assert_redirected_to routine_path(assigns(:routine))
  end

  test "should destroy routine" do
    assert_difference('Routine.count', -1) do
      delete :destroy, id: @routine
    end

    assert_redirected_to routines_path
  end
end
