local renderer = require('app.renderers.store')
local query = require('app.queries.store')
local respond_to = require("lapis.application").respond_to

local store = {}

function store.post(self)
  store_id = self.params.store_id
  data = self.params.data
  return renderer.get(query.set(store_id, data))
end

function store.get(self)
  store_id = self.params.store_id
  return renderer.get(query.get(store_id))
end

return store
