defmodule Drop do
    def fall_velocity({planemo, distance}) when distance >= 0 do
        gravity = case planemo do
            :earth -> 9.2
            :moon  -> 1.86
            :mars  -> 3.71
            _      -> 5.0
        end

        velocity = :math.sqrt(2 * gravity * distance)

        if velocity > 20 do
            IO.puts("Lokk out below!")
        else
            IO.puts("Reasonable...")
        end

        velocity

    end
end
