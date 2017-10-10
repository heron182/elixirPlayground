defmodule Countdown do
    def countdown(from) when from > 0 do
        IO.inspect(from)
        countdown(from-1)
    end

    def countdown(from) do
        IO.puts("Blastoff!!")
    end
end
