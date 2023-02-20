defmodule Cantina do
  use HTTPoison.Base

  def process_request_url(resource) do
    "https://swapi.dev/api/" <> resource
  end

  def process_response_body(body) do
    body |> Poison.decode!
  end
end
