defmodule ExAws.SageMakerRuntime.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_aws_sagemaker_runtime,
      version: "0.1.0",
      elixir: "~> 1.6",
      package: package(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp package do
    [
      description: "ExAws SageMaker Runtime service package",
      files: ["lib", "config", "mix.exs", "README*"],
      maintainers: ["Rekki"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/rekki/ex_aws_sagemaker_runtime"}
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_aws, git: "https://github.com/ex-aws/ex_aws.git", ref: "master"}
    ]
  end
end
