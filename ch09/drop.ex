defmodule Drop do
    def drop do
        receive do
            {from, planemo, distance} ->
                send(from, {planemo, distance, fall_velocity(planemo, distance)})
                drop()
        end
    end

    defp fall_velocity(:earth, distance) do
        :math.sqrt(2 * 9.8 * distance)
    end

    defp fall_velocity(:moon, distance) do
        :math.sqrt(2 * 1.7 * distance)
    end

    defp fall_velocity(:mars, distance) do
        :math.sqrt(2 * 7.5 * distance)
    end
end
