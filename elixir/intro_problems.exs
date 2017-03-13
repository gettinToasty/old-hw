defmodule MyRange do
  def create(first, last) do
    list = []
    list ++ first
    if first !== last do
      current = first +1
      create(current, last, list)
    end
  end

  def create(current, last, list) do
    list ++ current
    if current == last do
      list
    else
      current = current +1
      create(current, last, list)
    end
  end

end

defmodule FizzBuzz do
  def fizz_buzz(range) do
    Enum.map(range, fn(el) ->
      cond do
        el % 15 === 0 ->
          "FizzBuzz"
        el % 5 === 0 ->
          "Buzz"
        el % 3 === 0 ->
          "Fizz"
        true ->
          el
      end 
    end)
  end
end

defmodule MyList do

  def sum do
    
  end
  
end