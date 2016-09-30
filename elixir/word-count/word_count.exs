defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    sentence
    |> String.downcase
    # Break string into list of words (treat characters specified as whitespace)
    |> String.split(~r{[\s_:,!@$%^&]}, trim: true)
    |> Enum.reduce(%{}, &collect/2)
  end

  defp collect(word, acc) do
    Map.update(acc, word, 1, &(&1 + 1))
  end
end
