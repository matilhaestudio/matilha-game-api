require 'test_helper'

class GameEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_event = game_events(:one)
  end

  test "should get index" do
    get game_events_url
    assert_response :success
  end

  test "should get new" do
    get new_game_event_url
    assert_response :success
  end

  test "should create game_event" do
    assert_difference('GameEvent.count') do
      post game_events_url, params: { game_event: { event: @game_event.event, option_1_fn_body: @game_event.option_1_fn_body, option_1_fn_end: @game_event.option_1_fn_end, option_1_fn_return_message: @game_event.option_1_fn_return_message, option_1_message: @game_event.option_1_message, option_2_fn_body: @game_event.option_2_fn_body, option_2_fn_end: @game_event.option_2_fn_end, option_2_fn_return_message: @game_event.option_2_fn_return_message, option_2_message: @game_event.option_2_message } }
    end

    assert_redirected_to game_event_url(GameEvent.last)
  end

  test "should show game_event" do
    get game_event_url(@game_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_event_url(@game_event)
    assert_response :success
  end

  test "should update game_event" do
    patch game_event_url(@game_event), params: { game_event: { event: @game_event.event, option_1_fn_body: @game_event.option_1_fn_body, option_1_fn_end: @game_event.option_1_fn_end, option_1_fn_return_message: @game_event.option_1_fn_return_message, option_1_message: @game_event.option_1_message, option_2_fn_body: @game_event.option_2_fn_body, option_2_fn_end: @game_event.option_2_fn_end, option_2_fn_return_message: @game_event.option_2_fn_return_message, option_2_message: @game_event.option_2_message } }
    assert_redirected_to game_event_url(@game_event)
  end

  test "should destroy game_event" do
    assert_difference('GameEvent.count', -1) do
      delete game_event_url(@game_event)
    end

    assert_redirected_to game_events_url
  end
end
