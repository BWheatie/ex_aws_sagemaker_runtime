# ExAws.SageMakerRuntime

[![Hex.pm](https://img.shields.io/hexpm/v/ex_aws_sagemaker_runtime.svg)](https://hex.pm/packages/ex_aws_sagemaker_runtime)
[![Build Docs](https://img.shields.io/badge/hexdocs-release-blue.svg)](https://hexdocs.pm/ex_aws_sagemaker_runtime/ExAws.html)


[ExAws](https://github.com/ex-aws/ex_aws) service for [AWS SageMaker Runtime](https://docs.aws.amazon.com/sagemaker/latest/dg/API_Operations_Amazon_SageMaker_Runtime.html).

Use it for inference with models deployed on SageMaker.

_Not to be confused with [AWS SageMaker](https://docs.aws.amazon.com/sagemaker/latest/dg/API_Operations_Amazon_SageMaker_Service.html), which has its own API and [ExAws service](https://github.com/qyc/ex_aws_sagemaker) for managing notebooks, models, training, endpoints, and so on._

Discover more ExAws services [on GitHub](https://github.com/search?l=Elixir&q=%22ex_aws%22+in%3Aname&type=Repositories) and [on Hex](https://hex.pm/packages?_utf8=%E2%9C%93&search=ex_aws&sort=recent_downloads).


## Installation

Add the `ex_aws` core package and the `ex_aws_sagemaker_runtime` service package to your list of dependencies in `mix.exs`.

You'll also need a compatible HTTP client (defaults to `hackney`). 

```elixir
def deps do
  [
    {:ex_aws, "~> 2.1"},
    {:ex_aws_sagemaker_runtime, "~> 0.1"},
    {:hackney, "~> 1.14"},
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_aws_sagemaker_runtime](https://hexdocs.pm/ex_aws_sagemaker_runtime).

## API

- [InvokeEndpoint](https://docs.aws.amazon.com/sagemaker/latest/dg/API_runtime_InvokeEndpoint.html)