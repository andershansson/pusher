defmodule Pusher.Mixfile do
  use Mix.Project

  @description """
    Pusher HTTP client
  """

  def project do
    [ app: :pusher,
      version: "0.1.4",
      elixir: "~> 1.4",
      name: "Pusher",
      description: @description,
      package: package,
      source_url: "https://github.com/andershansson/pusher",
      deps: deps ]
  end

   def application do
    [
      applications: [ :httpoison, :exjsx, :signaturex ],
      env: [
        host: "http://localhost",
        port: "8080",
        app_key: "app_key",
        app_id: "app_id",
        secret: "secret"
      ]
    ]
  end

  defp deps do
    [{:httpoison, "~> 0.8"},
     {:signaturex, "~> 1.0"},
     {:exjsx, "~> 4.0"},
     {:earmark, "~> 0.1.17", only: :docs},
     {:ex_doc, "~> 0.8.0", only: :docs},
     {:mock, "~> 0.1.1", only: [:dev, :test] } ]
  end

  defp package do
    [ maintainers: ["Eduardo Gurgel Pinho"],
    licenses: ["MIT"],
    links: %{"Github" => "https://github.com/edgurgel/pusher"} ]
  end
end
