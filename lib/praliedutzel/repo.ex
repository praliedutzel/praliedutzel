defmodule Praliedutzel.Repo do
  use Ecto.Repo,
    otp_app: :praliedutzel,
    adapter: Ecto.Adapters.Postgres
end
