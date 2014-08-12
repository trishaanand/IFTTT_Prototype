require 'test_helper'

class TupleFakesControllerTest < ActionController::TestCase
  setup do
    @tuple_fake = tuple_fakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tuple_fakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tuple_fake" do
    assert_difference('TupleFake.count') do
      post :create, tuple_fake: { actionData: @tuple_fake.actionData, actionFields_id: @tuple_fake.actionFields_id, action_id: @tuple_fake.action_id, channel_id: @tuple_fake.channel_id, triggerCondition: @tuple_fake.triggerCondition, triggerValue: @tuple_fake.triggerValue, trigger_id: @tuple_fake.trigger_id }
    end

    assert_redirected_to tuple_fake_path(assigns(:tuple_fake))
  end

  test "should show tuple_fake" do
    get :show, id: @tuple_fake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tuple_fake
    assert_response :success
  end

  test "should update tuple_fake" do
    patch :update, id: @tuple_fake, tuple_fake: { actionData: @tuple_fake.actionData, actionFields_id: @tuple_fake.actionFields_id, action_id: @tuple_fake.action_id, channel_id: @tuple_fake.channel_id, triggerCondition: @tuple_fake.triggerCondition, triggerValue: @tuple_fake.triggerValue, trigger_id: @tuple_fake.trigger_id }
    assert_redirected_to tuple_fake_path(assigns(:tuple_fake))
  end

  test "should destroy tuple_fake" do
    assert_difference('TupleFake.count', -1) do
      delete :destroy, id: @tuple_fake
    end

    assert_redirected_to tuple_fakes_path
  end
end
