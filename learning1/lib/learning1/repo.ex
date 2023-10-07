defmodule Learning1.Repo do
  use Ecto.Repo,
    otp_app: :learning1,
    adapter: Ecto.Adapters.Postgres
end
