json.array!(@tuples) do |tuple|
  json.extract! tuple, :id, :channel_id, :trigger_id, :action_id, :triggerValue, :triggerCondition, :actionFieldID, :actionData
  json.url tuple_url(tuple, format: :json)
end
