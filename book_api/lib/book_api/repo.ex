defmodule BookApi.Repo do
  use Ecto.Repo,
    otp_app: :book_api,
    adapter: Ecto.Adapters.Postgres
end
