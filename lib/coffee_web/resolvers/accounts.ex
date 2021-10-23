use Rackex

(module(CoffeeWeb.Resolvers.Accounts, do: (
  (define(find_user(_parent, %{id: id}, _resolution), do: (
    case Coffee.Account.find_user(id) do
      nil ->
        {:error, "User ID #{id} not found"}

      user ->
        {:ok, user}
    end))))
))
