defmodule DropCase do
    def fall_velocity(planemo, distance) when distance >= 0 do
        gravity = case planemo do
            :earth -> 9.2
            :moon  -> 1.86
            :mars  -> 3.71
            _      -> 5.0
        end
        :math.sqrt(2 * gravity * distance)
    end
end
