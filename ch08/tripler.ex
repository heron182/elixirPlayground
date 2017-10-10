defmodule Tripler do
    def tripler(value, fnc) do
        3 * fnc.(value)
    end
end
