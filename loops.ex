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



#some partern algo

def myAlgo([]), do: :ok

def myAlgo(items) do

    Enum.each(items,fn x -> IO.puts(x)  end)

end



def filterList([]), do: 0

def filterList(items) do

   myList = Enum.filter(items,fn item -> item>5  end)

   Enum.each(myList,fn litsItem -> IO.write(getFibNumber(litsItem))  end)


end


def mapList(items) when not is_list(items) do
    :error
end

def mapList(items) do
    Enum.map(items,fn item -> item+2  end)

end



def forLoop(items) do


    for item <-items do
      item*2
    end

end



def fibs(items)do

    Enum.each(items,fn item ->spawn(IO.puts(getFibNumber(item)))  end)

end


def doubleForLoops(items1,items2) do


    for item1<-items1,item2<-items2 do


        {item1,item2,item1+item2}

    end



end


def getFibNumber(number) when number <0, do: :error

def getFibNumber(number), do: getFibNumber(number,1,0)
defp getFibNumber(0,_,results), do: results
defp getFibNumber(number,next,results) do
getFibNumber(number-1,next+results,next)

end


def startCaculation(number) do

#start = OS.system_time(:seconds)

fib = getFibNumber(number)

#finish = OS.system_time(:seconds)

#diff = finish - start

IO.puts("#{fib} ,")


#IO.puts("it run for #{diff}")

end

end
