defmodule Overal do
    def product([]) do
        0
    end

    def product(list) do
        product(list, 1)
    end

    defp product([head | tail], total) do
        product(tail, head * total)
    end

    defp product([], total) do
        total
    end
end
