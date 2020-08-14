defmodule BusiApiWeb.UserController do
  use BusiApiWeb, :controller

  alias BusiApi.Accounts
  alias BusiApi.Accounts.User
  alias BusiApiWeb.Auth.Guardian

  action_fallback BusiApiWeb.FallbackController

  def signin(conn, %{"email" => email, "password" => password}) do
    with {:ok, user, token} <- Guardian.authenticate(email, password) do
      conn
      |> put_status(:created)
      |> render("user.json", %{user: user, token: token})
    end
  end
end
