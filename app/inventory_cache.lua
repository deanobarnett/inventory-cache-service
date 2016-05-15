local app = require("lapis").Application()
local json_params = require("lapis.application").json_params
local store_view = require('app.views.store')

app:get("/:store_id", store_view.get)
app:post("/:store_id", json_params(store_view.post))

return app
