use Rackex

(module(Coffee.Account, do: (
  use Ecto.Schema
  import Ecto.Query

  alias Coffee.Repo

  schema "accounts" do
    field :name, :string
    field :email, :string

    has_many :posts, Coffee.Content
  end

  (define(find_user(id), do: (
    query = from u in Coffee.Account, where: u.id == ^id
    Repo.one(query)))))
))
