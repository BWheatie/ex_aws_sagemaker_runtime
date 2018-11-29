defmodule ExAws.SageMakerRuntime do
  @moduledoc """
  Implements an ExAws Service for AWS SageMaker Runtime.
  """

  @actions %{invoke_endpoint: :post}

  @doc """
  After deploying a model using Amazon SageMaker hosting services,
  your client applications can use this API to get inferences from
  the model(s) hosted at the specified endpoint.

  https://docs.aws.amazon.com/sagemaker/latest/dg/API_runtime_InvokeEndpoint.html
  """
  @type endpoint_name :: String.t()
  @type body :: map()
  @spec invoke_endpoint(endpoint_name, body) :: ExAws.Operation.JSON.t()
  def invoke_endpoint(endpoint_name, body) do
    request(:invoke_endpoint, body, "/endpoints/#{endpoint_name}/invocations")
  end

  defp request(action, data, path) do
    ExAws.Operation.JSON.new(:sagemaker_runtime, %{
      http_method: Map.fetch!(@actions, action),
      path: path,
      data: data,
      headers: [{"content-type", "application/json"}]
    })
  end
end
