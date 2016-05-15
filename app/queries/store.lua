local store = {}
local client = require('redis').connect('redis', 6379)

function store.set(store_id, data)
  client:hmset(store_id, data)
  return data
end

function store.get(store_id)
  return client:hgetall(store_id)
end

return store
