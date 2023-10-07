defmodule Playground do

    def loop(0), do: :ok
    
    
    def loop(n) do
    
        loop(n-1)
        IO.puts(n)

    end

end