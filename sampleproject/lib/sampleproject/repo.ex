defmodule Sampleproject.Repo do
  use Ecto.Repo,
    otp_app: :sampleproject,
    adapter: Ecto.Adapters.Postgres
end
