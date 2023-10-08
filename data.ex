defmodule Data do

  defstruct first_name: nil, last_name: nil, age: 0



  def new(first_name,last_name,age) do

    %Data{first_name: first_name,last_name: last_name,age: age}

  end


  def full_name(person) do


    person.first_name<>" "<>person.last_name


  end





end


defmodule TaskList do

  defstruct id: 0, entries: %{}


end
