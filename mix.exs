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
        api_key: System.get_env("CLOUDSMITH_API_KEY")
      ],
      package: package()
    ]
  end

  defp deps do
    [
      {:cowlib, "~> 2.11", only: :prod, repo: "hexrepo"},
      {:hackney, "~> 1.23.0", repo: "hexrepo"},
      {:phoenix, "~> 1.7", repo: "hexrepo"},
      {:jason, "~> 1.4", repo: "hexrepo"},
      {:ecto_sql, "~> 3.10", repo: "hexrepo"}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ajha-cs/merahexpkg"}
    ]
  end
end
