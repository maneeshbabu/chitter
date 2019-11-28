defmodule Chitter.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :bio, :string
    field :email, :string
    field :encrypted_password, :string
    field :link, :string
    field :location, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :username, :encrypted_password, :bio, :location, :link])
    |> validate_required([:email, :username, :encrypted_password, :bio, :location, :link])
    |> unique_constraint(:email)
    |> unique_constraint(:username)
  end
end
