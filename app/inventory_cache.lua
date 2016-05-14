local lapis = require("lapis")
local json_params = require("lapis.application").json_params
local respond_to = require("lapis.application").respond_to
local redis = require('redis')
local client = redis.connect('redis', 6379)

local app = lapis.Application()

app:match("/:store_id", respond_to({

  before = function(self)
    self.store_id = self.params.store_id
  end,

  GET = function(self)
    mappings = client:hgetall(self.store_id)

    return {
      json = {
        data = mappings
      }
    }
  end,

  POST = json_params(function(self)
    data = self.params.data

    client:hmset(self.store_id, data)

    return {
      json = {
        store_id = self.store_id,
        data = data
      }
    }
  end)
}))

return app
