<p align="left">
   <img src="https://dg8krxphbh767.cloudfront.net/tracks/elixir.svg" />
</p>

# List Length with Recursion 

Elixir algorithm exercise to practice recursion using [tail call optimization](https://blog.appsignal.com/2019/03/19/elixir-alchemy-recursion.html)

## Interesting Resources
- [Iteration, Recursion, and Tail-call Optimization in Elixir
](https://blog.appsignal.com/2019/03/19/elixir-alchemy-recursion.html)
- [Multi-clause Functions with Pattern Matching and Guards in Elixir
](https://www.culttt.com/2016/05/23/multi-clause-functions-pattern-matching-guards-elixir)
- [Elixir Lists](https://inquisitivedeveloper.com/lwm-elixir-14/)

## Module Usage
```elixir
  ListLength.call([]) # Result: 0
  ListLength.call([1, 2, 3]) # Result: 3
```

## Algorithm Explanation
```elixir
  def call(list), do: get_length(list, 0)

  # Hide the logic with private functions - helps to abstract the logic from the main function
  # Multi-clause functions: overload a function by specifying different clauses to match against - if tail is empty, then return the current accumulator value 
  defp get_length([], acc), do: acc

  # Prepend to a list using the | operator in order to access head and tail - possible due to Elixir nature of having linked lists 
  # Recursively call function and increase accumulator argument until the tail is empty 
  defp get_length([_head | tail], acc), do: get_length(tail, 1 + acc)
```

