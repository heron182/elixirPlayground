defmodule Tower do
    defstruct [location: "", height: 20, planemo: :earth, name: ""]
end

defimpl Valid, for: Tower do
    def valid?(%Tower{height: h, planemo: p}) do
        p != nil and h > 0
    end
end

defimpl Inspect, for: Tower do
    import Inspect.Algebra
    def inspect(item, _options) do
        metres = to_string(item.height)
                 |> concat("m")
        concat([metres, break(), item.name, ",", break(),
                item.location, ",", break(), to_string(item.planemo)])
    end
end
