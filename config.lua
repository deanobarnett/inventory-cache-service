local config = require("lapis.config")

config({"development"}, {
  host = "0.0.0.0",
  redis = {
    host = "redis",
    port = "6379",
  }
})
