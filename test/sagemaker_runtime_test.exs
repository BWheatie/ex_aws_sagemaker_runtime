defmodule ExAws.SageMakerRuntimeTest do
  use ExUnit.Case

  test "invoke_endpoint/2 returns a JSON operation for sagemaker_runtime" do
    payload = %{query: "cutoff_predictions", supplier_id: "abc"}

    assert %ExAws.Operation.JSON{
             service: :sagemaker_runtime,
             http_method: :post,
             path: "/endpoints/model-name/invocations",
             headers: [{"content-type", "application/json"}],
             data: ^payload
           } = ExAws.SageMakerRuntime.invoke_endpoint("model-name", payload)
  end
end
