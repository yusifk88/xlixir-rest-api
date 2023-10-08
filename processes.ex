defmodule MyProcess do


  def start do

    spawn(fn  -> loop(0)  end)

  end


  #send to the view method

  def view(process_id) do


    send(process_id,{:view,self()})



    receive do
      {:response, value} ->
        value
    end

  end


  #send to the add server


  def add(process_id, value) do

    send(process_id, {:add, value})

  end



  #send to subtruct server

  def sub(process_id,vallue) do

    send(process_id,{:sub, vallue})

  end






  def loop(n) do

    new_number = receive do
      {:view, caller_id} -> send(caller_id,{:response,n})


        {:add, value} -> n + value

        {:sub, value} ->
          n - value
        {:mult, value} ->
          n * value

        {:div, value} ->
          n / value
        _ -> IO.puts("invalue operation pressentes")
    end



    loop(new_number)

  end

end
