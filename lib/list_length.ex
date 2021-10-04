defmodule ListLength do
  @moduledoc """
  Gets the length of a list via recursion
  """

  def call(list), do: get_length(list, 0)

  defp get_length([], acc), do: acc
  defp get_length([_head, tail], acc), do: get_length(tail, 1 + acc)
end
