defmodule Solvent.Repo do
  use Ecto.Repo,
    otp_app: :solvent,
    adapter: Ecto.Adapters.Postgres
end
