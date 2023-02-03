defmodule Cantina do
  use HTTPoison.Base

  def process_request_url(resource) do
    "https://swapi.dev/api/" <> resource
  end

  def process_response_body(body) do
    body
      |> Poison.decode!(body)
  end
  # def find do
  #   HTTPoison.start
  #   response = HTTPoison.get!("https://swapi.dev/api/people/2/?format=json")
  #   jsonify = JSON.decode(response.body)
  #   IO.inspect jsonify
  # end
end
