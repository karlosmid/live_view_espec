ESpec.configure fn(config) ->
  config.before fn(tags) ->
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(LiveViewEspec.Repo)
    {:shared, hello: :world, tags: tags}
  end

  config.finally fn(_shared) ->
    Ecto.Adapters.SQL.Sandbox.checkin(LiveViewEspec.Repo, [])
    :ok
  end
end
Code.require_file("spec/phoenix_helper.exs")
