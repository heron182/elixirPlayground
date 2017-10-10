defmodule Ask do
    def chars() do
        IO.puts("""
            Which planemo are you on?
              1. Earth
              2. Moon
              3. Mars
            """)

        IO.getn("Which? >")
    end

    def line() do
        planemo = get_planemo()
        distance = get_distance()
        Drop.fall_velocity({planemo, distance})
    end

    defp get_distance() do
        IO.gets("What distance?")
        |> String.trim
        |> String.to_integer
    end

    defp get_planemo() do
        IO.gets("""
        Which planemo are you on?
        1. Earth
        2. Moon
        3. Mars
            """)
        |> String.first
        |> chr_to_planemo
    end

    defp chr_to_planemo("1"), do: :earth
    defp chr_to_planemo("2"), do: :mars
    defp chr_to_planemo("3"), do: :moon

end
