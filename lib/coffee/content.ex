use Rackex

(module Coffee.Content, do: (
  (define (list_posts), do: (
    [
      %{
        id: "1",
        title: "The Art of War",
        body: "Excelente book"
      }
    ]))))
