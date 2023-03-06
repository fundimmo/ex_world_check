# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Api.User do
  @moduledoc """
  API calls for all endpoints tagged `User`.
  """

  alias ExWorldCheck.Connection
  import ExWorldCheck.RequestBuilder

  @doc """
  Get a list of active users in the client's account.
  Get a list of active users in the client's account.

  ### Parameters

  - `connection` (ExWorldCheck.Connection): Connection to server
  - `authorization` (String.t): The authorization credentials including 'keyId', 'algorithm', 'headers', 'signature' (see 'Security and Authentication details' documentation section for more details)
  - `date` (String.t): The date and time at which the message was originated in 'RFC 1123' format
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%UserSummary{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_users(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, list(ExWorldCheck.Model.UserSummary.t())}
          | {:ok, list(ExWorldCheck.Model.Error.t())}
          | {:error, Tesla.Env.t()}
  def get_users(connection, authorization, date, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/users")
      |> add_param(:headers, :Authorization, authorization)
      |> add_param(:headers, :Date, date)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%ExWorldCheck.Model.UserSummary{}]},
      {400, [%ExWorldCheck.Model.Error{}]},
      {401, false},
      {404, [%ExWorldCheck.Model.Error{}]},
      {415, false},
      {429, false},
      {500, [%ExWorldCheck.Model.Error{}]}
    ])
  end
end
