json.extract! game_event, :id, :event, :option_1_message, :option_1_fn_body, :option_1_fn_return_message, :option_1_fn_end, :option_2_message, :option_2_fn_body, :option_2_fn_return_message, :option_2_fn_end, :created_at, :updated_at
json.url game_event_url(game_event, format: :json)
