defmodule ListOps do
  @spec count(list) :: non_neg_integer
  def count(list) do
    reduce(list, 0, fn (_, acc) -> acc + 1 end)
  end

  @spec reverse(list) :: list
  def reverse(list) do
    reduce(list, [], &([&1|&2]))
  end

  @spec map(list, (any -> any)) :: list
  def map(list, f) do
    reverse_reduce(list, [], &([f.(&1)|&2]))
  end

  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter(list, f) do
    reverse_reduce(list, [], &(if f.(&1), do: [&1|&2], else: &2))
  end

  @type acc :: any
  @spec reduce(list, acc, ((any, acc) -> acc)) :: acc
  def reduce([], acc, _f), do: acc
  def reduce([head|tail], acc, f) do
    reduce(tail, f.(head, acc), f)
  end

  @spec append(list, list) :: list
  def append(a, b) do
    reverse_reduce(a, b, &([&1|&2]))
  end

  @spec concat([[any]]) :: [any]
  def concat(ll) do
    reverse_reduce(ll, [], &append/2)
  end

  defp reverse_reduce(list, acc, f) do
    reverse(list) |> reduce(acc, f)
  end
end
