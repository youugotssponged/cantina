defmodule People do
  @expected_fields ~w(
    birth_year eye_color
    films gender hair_color
    height homeworld
    mass name
    skin_color created
    edited species
    starships url
    vehicles
  )

  def fields do
    @expected_fields
  end

  def people_url(index) do
    "people/#{index}"
  end

  def get_person(index) do
    Cantina.get!(people_url(index))
    |> Helpers.to_map(@expected_fields)
  end

  # TODO: write methods for getting related data i.e starships, homeworld
  def get_starships(person) do
    shiplinks = person.starships
    bins = Enum.map(
      shiplinks,
      fn link ->
        Regex.scan(~r/\d{1,}/, link)
          |> Enum.at(0)
          |> Enum.at(0)
      end
    )

    for i <- bins do
      shipNum = String.to_integer(i)
      IO.puts(shipNum)
    end
  end
end
