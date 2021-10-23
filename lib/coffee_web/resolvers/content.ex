use Rackex

(module(CoffeeWeb.Resolvers.Content,
  do: (define(list_posts(_parent, _args, _resolution), do: {:ok, Coffee.Content.list_posts()}))
))
