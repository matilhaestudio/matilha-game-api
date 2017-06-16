# json.array! @game_events, partial: 'game_events/game_event', as: :game_event
json.array! @game_events.order("RANDOM()") do |event|
  json.event event.event
  json.options event.options
end
