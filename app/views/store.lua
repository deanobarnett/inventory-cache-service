local renderer = require('app.renderers.store')
local query = require('app.queries.store')

local store = {}

function store.post(self)
  local store_id = self.params.store_id
  local data = self.params.data
  return renderer.get(query.set(store_id, data))
end

function store.get(self)
  local store_id = self.params.store_id
  return renderer.get(query.get(store_id))
end

return store
