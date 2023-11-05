defmodule RestApi.Inventory.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :name, :string
    field :status, :string
    field :description, :string

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:name, :description, :status])
    |> validate_required([:name, :description, :status])
  end

end
