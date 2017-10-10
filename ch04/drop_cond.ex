defmodule DropCond do
    def fall_velocity(planemo, distance) when distance >= 0 do
        gravity = case planemo do
            :earth -> 9.2
            :moon  -> 1.86
            :mars  -> 3.71
            _      -> 5.0
        end

        velocity = :math.sqrt(2 * gravity * distance)

        cond do
            velocity == 0 -> :stable
            velocity <= 5 -> :slow
            velocity > 5 and velocity <= 10 -> :moving
            velocity > 10 and velocity <= 20 -> :fast
            velocity > 20 -> :speedy
        end

    end
end
