defmodule Merahexpkg.MixProject do
  use Mix.Project

  def project do
    [
      app: :merahexpkg,
      version: "2.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      description: "A sample Hex package",
      deps: deps(),
      hex: [
        api_url: "https://hex.cloudsmith.io/orgcs/hexrepo",
        api_key: "28c5d1f81d8dea525e438e2ab75bf6032fd8fa1d"
      ],
      package: package()
    ]
  end

  defp deps do
    [
      {:cowlib, "~> 2.11", only: :prod}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ajha-cs/merahexpkg"}
    ]
  end
end
