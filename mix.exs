defmodule ExWorldCheck.Mixfile do
  use Mix.Project

  @version "0.1.0"
  @scm_url "https://github.com/fundimmo/ex_world_check"

  def project do
    [
      app: :ex_world_check,
      description: "Elixir API client for Refinitiv World-Check One API.",
      elixir: "~> 1.16",
      version: @version,
      source_url: @scm_url,
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps(),
      docs: docs()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:poison, "~> 3.1"},
      {:tesla, "~> 1.11"},

      # Dev dependencies
      {:ex_doc, "~> 0.34", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      source_ref: "v#{@version}"
    ]
  end

  defp package do
    [
      name: "ex_world_check",
      links: %{"GitHub" => @scm_url},
      files: ~w(.formatter.exs config lib mix.exs README* LICENSE*)
    ]
  end
end
