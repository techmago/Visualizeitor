require 'test_helper'

class TrialsControllerTest < ActionController::TestCase
  setup do
    @trial = trials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trial" do
    assert_difference('Trial.count') do
      post :create, trial: { acctual: @trial.acctual, acform_id: @trial.acform_id, comment: @trial.comment, state: @trial.state, teacher_id: @trial.teacher_id }
    end

    assert_redirected_to trial_path(assigns(:trial))
  end

  test "should show trial" do
    get :show, id: @trial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trial
    assert_response :success
  end

  test "should update trial" do
    patch :update, id: @trial, trial: { acctual: @trial.acctual, acform_id: @trial.acform_id, comment: @trial.comment, state: @trial.state, teacher_id: @trial.teacher_id }
    assert_redirected_to trial_path(assigns(:trial))
  end

  test "should destroy trial" do
    assert_difference('Trial.count', -1) do
      delete :destroy, id: @trial
    end

    assert_redirected_to trials_path
  end
end
