json.array!(@tuple_fakes) do |tuple_fake|
  json.extract! tuple_fake, :id, :channel_id, :trigger_id, :action_id, :triggerValue, :triggerCondition, :actionFields_id, :actionData
  json.url tuple_fake_url(tuple_fake, format: :json)
end
