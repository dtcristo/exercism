defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(l, l),  do: :equal

  def compare([], _), do: :sublist

  def compare(_, []), do: :superlist

  def compare(a, b),  do: :unequal

  def compare([a|as], [b|bs]) do
    cond do
      (a == b) -> compare(as, bs)
      true -> :unequal
    end
  end
end
