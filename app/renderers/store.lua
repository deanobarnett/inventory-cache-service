local store = {}

function store.get(data)
  return {
    json = {
      data = data
    }
  }
end

return store
