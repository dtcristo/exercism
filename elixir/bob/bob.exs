defmodule Teenager do
  def hey(input) do
    cond do
      input |> question? -> "Sure."
      input |> yelling?  -> "Whoa, chill out!"
      input |> silence?  -> "Fine. Be that way!"
      true               -> "Whatever."
    end
  end

  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp yelling?(input) do
    upcase   = String.upcase(input)
    downcase = String.downcase(input)
    upcase != downcase and input == upcase
  end

  defp silence?(input) do
    String.strip(input) == ""
  end
end
