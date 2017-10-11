defmodule Drop do
    def fall_velocity({planemo, distance}) when distance >= 0 do
        try do

            gravity = case planemo do
                :earth -> 9.2
                :moon  -> 1.86
                :mars  -> 3.71
            end

            :math.sqrt(2 * gravity * distance)

        rescue
            ArithmeticError -> {:error, "Distance must be non-negative"}
            CaseClauseError -> {:error, "#{planemo} not found"}

        # after
        #     cleanup
        end

    end
end
