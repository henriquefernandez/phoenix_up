defmodule PhoenixUp.MixProject do
  use Mix.Project

  def project do
    [
      app: :phoenix_up,
      version: "0.1.0",
      elixir: "~> 1.9",
      elixirc_paths: elixirc_paths(Mix.env()),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: "More generators, productivity and fun for our phoenix projects",
      package: package(),
      docs: [logo: "priv/static/logo.png", extras: ["README.md"], main: "readme"],
      name: "PhoenixUp",
      deps: deps()
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    []
  end

  defp elixirc_paths(:test), do: ["lib", "test/support", "test"]
  defp elixirc_paths(_), do: ["lib"]

  defp package do
    [
      name: :phoenix_up,
      maintainers: ["Henrique Fernandez Teixeira"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/henriquefernandez/phoenix_up"}
    ]
  end
end