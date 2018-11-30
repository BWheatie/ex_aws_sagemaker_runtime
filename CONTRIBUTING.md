## Contributing

## Implementing SageMaker Runtime API actions

Have a look at the [AWS Docs to see the available SageMaker Runtime API actions](https://docs.aws.amazon.com/sagemaker/latest/dg/API_Operations_Amazon_SageMaker_Runtime.html).
If there is a new action or an existing action has changed, that's a good opportunity to add it to
`ExAws.SageMakerRuntime`.

Note that the above API docs might be lacking in information. For example, at the time of writing,
they do not specify whether parameters are optional or required. It can be useful to cross-reference
the [boto3 library (Python SDK for AWS) docs](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/sagemaker-runtime.html#SageMakerRuntime.Client.invoke_endpoint) as they could contain extra information on the API actions.

Another good reference is the [JSON schema for the SageMaker Runtime service](https://github.com/aws/aws-sdk-go/blob/master/models/apis/runtime.sagemaker/2017-05-13/api-2.json).
Some AWS SDKs use these schemas to generate their API clients.
ExAws doesn't do this yet, [but there have been attempts](https://github.com/ex-aws/ex_aws/blob/master/CONTRIBUTING.md#what-about-code-generation).

The [SageMaker Runtime API uses the 'rest-json' protocol](https://github.com/aws/aws-sdk-go/blob/88388f1dcec6c6c6548dab2149b22d36ef2f5e08/models/apis/runtime.sagemaker/2017-05-13/api-2.json#L7) which is similar to the 'json' protocol.
Therefore every public function within the `ExAws.SageMakerRuntime` module needs to return an `ExAws.Operation.JSON` struct.