defmodule NucleotideCount do

  def histogram('') do
    %{?A => 0, ?T => 0, ?C => 0, ?G => 0}
  end

  def histogram(hist) do
    %{?A => count(hist,?A), ?T => count(hist,?T), ?C => count(hist,?C), ?G => count(hist,?G)}
  end

  def count('', _) do
    0
  end

  def count([?A|tail],?A) do
    1 + count(tail, ?A)
  end

  def count([?C|tail],?C) do
    1 + count(tail, ?C)
  end

  def count([?T|tail],?T) do
      1 + count(tail, ?T)
  end

  def count([?G|tail],?G) do
    1 + count(tail, ?G)
  end

  def count([head|tail], nucleo) do
    count(tail, nucleo)
  end
end