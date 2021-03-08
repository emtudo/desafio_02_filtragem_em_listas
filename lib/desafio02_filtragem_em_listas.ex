defmodule Desafio02FiltragemEmListas do
  def call(list), do: countOdd(list, 0)

  defp countOdd([], acc), do: acc

  defp countOdd([head | tail], acc) do
    value =
      handle_cast(head)
      |> is_odd()
      |> IO.inspect()

    countOdd(tail, acc + value)
  end

  defp handle_cast(value) do
    case Integer.parse(value) do
      {int, _} -> int
      :error -> 0
    end
  end

  defp is_odd(value) when value > 1 do
    case rem(value, 2) do
      0 -> 1
      _ -> 0
    end
  end

  defp is_odd(value) when value == 0, do: 0

  defp is_odd(value) when value == 1, do: 1

  defp is_odd(value) when value < 0, do: is_odd(value * -1)
end
