defmodule LiveViewEspec.Repo do
  use Ecto.Repo,
    otp_app: :live_view_espec,
    adapter: Ecto.Adapters.Postgres
end
