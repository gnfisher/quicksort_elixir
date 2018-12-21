defmodule QuickSort do
  # Take an array and sort it.
  # 1. Pick an element/pivot from the array (the head in our case)
  # 2. Organize so all above/below are to one side
  # 3. Recursively call sort on the partitions.
  #
  # Interesting bits...
  # Binding an anonymous function with the ampersand [1]
  # Enum.split_with operator is dope and hooray for pattern matching!
  #
  # To run in terminal navigate to the folder and run `elixir sort.exs`
  #
  # [1]: https://dockyard.com/blog/2016/08/05/understand-capture-operator-in-elixir

  def sort([]), do: []
  def sort([head|tail]) do
    {lesser, greater} = Enum.split_with(tail, &(&1 < head))
    sort(lesser) ++ [head] ++ sort(greater)
  end
end

IO.inspect QuickSort.sort([5,10,2,33,100,4])
