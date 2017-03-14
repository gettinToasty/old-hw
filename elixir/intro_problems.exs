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
    Enum.map(range, 
      fn(el) ->
        cond do
          rem(el, 15) === 0 ->
            "FizzBuzz"
          rem(el, 5) === 0 ->
            "Buzz"
          rem(el, 3) === 0 ->
            "Fizz"
          true ->
            el
        end 
      end
    )
  end
end

defmodule MyList do

  def sum(list) do
    total = 0
    Enum.each(list, 
      fn(el) ->
        total = total +el
      end
    )
    total
  end

  def my_reduce(list, accum, func) do 
    Enum.each(list, func(el, accum))

    accum
  end

  def my_select(list, func) do
    results = []
    Enum.each(list, 
      fn(el) ->
        if func(el) do
          results ++ [el]
        end
      end
    )

    results
  end

  def my_any?(list, func) do
    bool = false
    Enum.each(list, 
      fn(el) ->
        if func(el) do
          bool = true
        end
      end
    )

    bool
  end

  def my_map(list, func) do
    results = []
    Enum.each(list,
      fn(el) -> 
        results ++ [func(el)]
      end
    )

    results
  end

  def my_uniq(list) do
    map = %{}
    results = []
    Enum.each(list, 
      fn(el) -> 
        if !map[el] do
          map[el] = true
          results ++ [el]
        end
      end
    )
  end

  def my_flatten(list) do
    
  end

  def my_zip(list) do
    
  end

end

defmodule Substrings do
  
  def substrings do
    
  end

end

defmodule Mergesort do
  
  def sort do
    
  end

end

defmodule Curry do
  
  def curry(func) do
    {_, arity} = :erlang.fun_info(func, :arity)
    curry(func, arity, [])
  end

  def curry(func, 0, arguments) do
    apply(func, Enum.reverse(arguments))
  end

  def curry(func, arity, arguments) do
    fn arg -> curry(func, arity - 1, [arg | arguments]) end
  end

end