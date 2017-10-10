defmodule DropTuples do

    @spec fall_velocity({atom, number}) :: float
    def fall_velocity({:earth, distance}) when distance > 0 do
        :math.sqrt(2 * 9.8 * distance)
    end

    @spec fall_velocity({atom, number}) :: float
    def fall_velocity({:moon, distance}) when distance > 0 do
        :math.sqrt(2 * 1.6 * distance)
    end

    @spec fall_velocity({atom, number}) :: float
    def fall_velocity({:mars, distance}) when distance > 0 do
        :math.sqrt(2 * 3.71 * distance)
    end
end
