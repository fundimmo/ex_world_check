# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Api.Passportcheck do
  @moduledoc """
  API calls for all endpoints tagged `Passportcheck`.
  """

  alias ExWorldCheck.Connection
  import ExWorldCheck.RequestBuilder

  @doc """
  Generates MRZ data
  Performs generation of MRZ data according to provided data 

  ### Parameters

  - `connection` (ExWorldCheck.Connection): Connection to server
  - `authorization` (String.t): The authorization credentials including 'keyId', 'algorithm', 'headers', 'signature' (see 'Security and Authentication details' documentation section for more details)
  - `date` (String.t): The date and time at which the message was originated in 'RFC 1123' format
  - `content_type` (String.t): The media type of the request (e.g., 'application/json')
  - `content_length` (integer()): The length of the request body in octets (8-bit bytes)
  - `mrz_generation_request` (MrzGenerationRequest): Object containing data for generation of MRZ
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, ExWorldCheck.Model.MrzGenerationResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_mrz_data(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          integer(),
          ExWorldCheck.Model.MrzGenerationRequest.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, ExWorldCheck.Model.MrzGenerationResponse.t()}
          | {:ok, list(ExWorldCheck.Model.Error.t())}
          | {:error, Tesla.Env.t()}
  def get_mrz_data(
        connection,
        authorization,
        date,
        content_type,
        content_length,
        mrz_generation_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/passportcheck/mrz")
      |> add_param(:headers, :Authorization, authorization)
      |> add_param(:headers, :Date, date)
      |> add_param(:headers, :"Content-Type", content_type)
      |> add_param(:headers, :"Content-Length", content_length)
      |> add_param(:body, :body, mrz_generation_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %ExWorldCheck.Model.MrzGenerationResponse{}},
      {400, [%ExWorldCheck.Model.Error{}]},
      {401, false},
      {404, [%ExWorldCheck.Model.Error{}]},
      {415, false},
      {429, false},
      {500, [%ExWorldCheck.Model.Error{}]}
    ])
  end
end
