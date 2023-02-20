defmodule Helpers do
  def to_enum(request, expected_fields) do
    objectBody = request.body
    Map.take(objectBody, expected_fields)
      |> Enum.map(fn({key, value}) -> {String.to_atom(key), value} end)
  end

  def to_map(request, expected_fields) do
    objectBody = request.body
    Map.take(objectBody, expected_fields)
      |> Map.new(fn {key, value} -> {String.to_atom(key), value} end)
  end

  def to_enum_from_map(map) do
    Enum.map(map, fn({key, value}) -> {String.to_atom(key), value} end)
  end

  def to_map_from_enum(enum) do
    Enum.into(enum, %{})
  end
end
