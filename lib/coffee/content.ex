use Rackex

(module(Coffee.Content, do: (
  use Ecto.Schema
  import Ecto.Query

  alias Coffee.Repo

  schema "content" do
    field :title, :string
    field :email, :string

    belongs_to :account, Coffee.Account
  end

  (define(list_posts, do: (
    query = from(c in Coffee.Content)
    Repo.all(query)))))
))
