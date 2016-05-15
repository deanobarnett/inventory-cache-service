renderer = require("app.renderers.store")

describe("store renderer", function()
  describe(".get", function()
    describe("when data is present", function()
      it("decorates the data", function()
        local expected = { json = { data = "foo" } }
        local actual = renderer.get("foo")

        assert.are.same(expected, actual)
      end)
    end)

    describe("when data is null", function()
      it("decorates the data", function()
        local expected = { json = { data = nil } }
        local actual = renderer.get(nil)

        assert.are.same(expected, actual)
      end)
    end)
  end)
end)
