defmodule Playground do


#  looping through a list

    def loop(0), do: :ok
    
    
    def loop(n) do
    
        loop(n-1)
        IO.puts(n)

    end


# summing a list of items or an array

    def sumList([]), do: 0


    def sumList([head|tail]) do

    head+sumList(tail)

end

end