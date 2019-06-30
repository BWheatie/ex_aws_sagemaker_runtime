defmodule ExAws.SageMakerRuntime do
  @moduledoc """
  Implements an ExAws Service for AWS SageMaker Runtime.
  """

  @actions %{invoke_endpoint: :post}

  @doc """
  After deploying a model using Amazon SageMaker hosting services,
  your client applications can use this API to get inferences from
  the model hosted at the specified endpoint.
  """
  @typedoc "The name of the endpoint that was specified when creating the endpoint using the CreateEndpoint API."
  @type endpoint_name :: String.t()

  @typedoc "Provides input data, in the format specified in the `ContentType` request header. Amazon SageMaker passes all of the data in the body to the model."
  @type body :: map()

  @spec invoke_endpoint(endpoint_name, body) :: ExAws.Operation.JSON.t()
  def invoke_endpoint(endpoint_name, body) do
    request(:invoke_endpoint, body, "/endpoints/#{endpoint_name}/invocations")
  end

  defp request(action, data, path, params \\ [], headers \\ [], before_request \\ nil) do
    ExAws.Operation.JSON.new(:sagemaker_runtime, %{
      http_method: Map.fetch!(@actions, action),
      path: [path, "?", URI.encode_query(params)] |> IO.iodata_to_binary(),
      data: data,
      headers: [{"content-type", "application/json"} | headers],
      before_request: before_request
    })
  end
end
