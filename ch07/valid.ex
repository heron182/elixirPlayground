defprotocol Valid do
    @doc "Return true if data is considered consistelly valid"
    def valid?(data)
end
