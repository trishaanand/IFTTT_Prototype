json.array!(@tuples) do |tuple|
  json.extract! tuple, :id
  json.url tuple_url(tuple, format: :json)
end
