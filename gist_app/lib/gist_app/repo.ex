defmodule GistApp.Repo do
  use Ecto.Repo,
    otp_app: :gist_app,
    adapter: Ecto.Adapters.Postgres
end
