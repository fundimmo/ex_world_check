# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Api.LinkedCases do
  @moduledoc """
  API calls for all endpoints tagged `LinkedCases`.
  """

  alias ExWorldCheck.Connection
  import ExWorldCheck.RequestBuilder

  @doc """
  Retrieve the list of case relationships
  Retrieve the list of case relationships with cases linked to it.  Relationship type strategies examples:   * `primary-to-subcase` : declares `caseSystemId` as a primary case and lists cases linked to it with                           `primary-to-subcase` relationship type.  * `subcase-to-primary` : declares `caseSystemId` as a subcase and lists cases linked to it with                           `subcase-to-primary` relationship type. 

  ### Parameters

  - `connection` (ExWorldCheck.Connection): Connection to server
  - `authorization` (String.t): The authorization credentials including 'keyId', 'algorithm', 'headers', 'signature' (see 'Security and Authentication details' documentation section for more details)
  - `date` (String.t): The date and time at which the message was originated in 'RFC 1123' format
  - `content_type` (String.t): The media type of the request (e.g., 'application/json')
  - `content_length` (integer()): The length of the request body in octets (8-bit bytes)
  - `case_system_id` (String.t): System generated ID for a Case
  - `relationship_types` ([String.t]): Relationship type between cases. Multiple comma separated values allowed
  - `case_relationship_request` (CaseRelationshipRequest): Request containing pagination to list case relationships.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, ExWorldCheck.Model.CaseRelationshipResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_relationship_identifiers(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          integer(),
          String.t(),
          list(String.t()),
          ExWorldCheck.Model.CaseRelationshipRequest.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, ExWorldCheck.Model.CaseRelationshipResponse.t()}
          | {:ok, list(ExWorldCheck.Model.Error.t())}
          | {:error, Tesla.Env.t()}
  def get_relationship_identifiers(
        connection,
        authorization,
        date,
        content_type,
        content_length,
        case_system_id,
        relationship_types,
        case_relationship_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/cases/#{case_system_id}/relationship/#{relationship_types}")
      |> add_param(:headers, :Authorization, authorization)
      |> add_param(:headers, :Date, date)
      |> add_param(:headers, :"Content-Type", content_type)
      |> add_param(:headers, :"Content-Length", content_length)
      |> add_param(:body, :body, case_relationship_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %ExWorldCheck.Model.CaseRelationshipResponse{}},
      {400, [%ExWorldCheck.Model.Error{}]},
      {401, false},
      {404, [%ExWorldCheck.Model.Error{}]},
      {415, false},
      {429, false},
      {500, [%ExWorldCheck.Model.Error{}]}
    ])
  end

  @doc """
  Create links between cases
  Create links between cases based on relationship type strategy(`relationshipType`).  **Note:** There is a maximum number of World-Check One relationships between cases: * Maximum 500 primary cases are allowed per a subcase.  * Maximum 50 subcases are allowed per a primary case.  Relationship type strategies examples:   * `primary-to-subcase` : declares `caseSystemId` as a primary case and cases listed in `linkedCasesRequest`                           as subcases which will be linked to a primary case.  * `subcase-to-primary` : declares `caseSystemId` as a subcase and cases listed in `linkedCasesRequest`                           as primary cases which will be linked to a subcase.  **Example HTTP request**  ```     {       \"relatedCaseSystemIds\":[         \"Case System ID 1\",         \"Case System ID 2\",       ]     } ``` 

  ### Parameters

  - `connection` (ExWorldCheck.Connection): Connection to server
  - `authorization` (String.t): The authorization credentials including 'keyId', 'algorithm', 'headers', 'signature' (see 'Security and Authentication details' documentation section for more details)
  - `date` (String.t): The date and time at which the message was originated in 'RFC 1123' format
  - `content_type` (String.t): The media type of the request (e.g., 'application/json')
  - `content_length` (integer()): The length of the request body in octets (8-bit bytes)
  - `case_system_id` (String.t): System generated ID for a case.
  - `relationship_type` (String.t): Relationship type between cases.
  - `linked_cases_request` (LinkedCasesRequest): Related case system IDs.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec linking_cases(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          integer(),
          String.t(),
          String.t(),
          ExWorldCheck.Model.LinkedCasesRequest.t(),
          keyword()
        ) :: {:ok, nil} | {:ok, list(ExWorldCheck.Model.Error.t())} | {:error, Tesla.Env.t()}
  def linking_cases(
        connection,
        authorization,
        date,
        content_type,
        content_length,
        case_system_id,
        relationship_type,
        linked_cases_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:put)
      |> url("/cases/#{case_system_id}/relationship/#{relationship_type}")
      |> add_param(:headers, :Authorization, authorization)
      |> add_param(:headers, :Date, date)
      |> add_param(:headers, :"Content-Type", content_type)
      |> add_param(:headers, :"Content-Length", content_length)
      |> add_param(:body, :body, linked_cases_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, false},
      {400, [%ExWorldCheck.Model.Error{}]},
      {401, false},
      {404, [%ExWorldCheck.Model.Error{}]},
      {415, false},
      {429, false},
      {500, [%ExWorldCheck.Model.Error{}]}
    ])
  end

  @doc """
  Delete links between cases
  Unlink cases based on relationship type strategy(`relationshipType`).  Relationship type strategies examples:   * `primary-to-subcase` : declares `caseSystemId` as a primary case and cases listed in `linkedCasesRequest`                           as subcases which will be unlinked from a primary case.  * `subcase-to-primary` : declares `caseSystemId` as a subcase and cases listed in `linkedCasesRequest`                           as primary cases which will be unlinked from a subcase. 

  ### Parameters

  - `connection` (ExWorldCheck.Connection): Connection to server
  - `authorization` (String.t): The authorization credentials including 'keyId', 'algorithm', 'headers', 'signature' (see 'Security and Authentication details' documentation section for more details)
  - `date` (String.t): The date and time at which the message was originated in 'RFC 1123' format
  - `content_type` (String.t): The media type of the request (e.g., 'application/json')
  - `content_length` (integer()): The length of the request body in octets (8-bit bytes)
  - `case_system_id` (String.t): System generated ID for a Case.
  - `relationship_type` (String.t): Relationship type between cases.
  - `linked_cases_request` (LinkedCasesRequest): Related case system IDs.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec unlinking_cases(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          integer(),
          String.t(),
          String.t(),
          ExWorldCheck.Model.LinkedCasesRequest.t(),
          keyword()
        ) :: {:ok, nil} | {:ok, list(ExWorldCheck.Model.Error.t())} | {:error, Tesla.Env.t()}
  def unlinking_cases(
        connection,
        authorization,
        date,
        content_type,
        content_length,
        case_system_id,
        relationship_type,
        linked_cases_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/cases/#{case_system_id}/relationship/#{relationship_type}")
      |> add_param(:headers, :Authorization, authorization)
      |> add_param(:headers, :Date, date)
      |> add_param(:headers, :"Content-Type", content_type)
      |> add_param(:headers, :"Content-Length", content_length)
      |> add_param(:body, :body, linked_cases_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, [%ExWorldCheck.Model.Error{}]},
      {401, false},
      {404, [%ExWorldCheck.Model.Error{}]},
      {415, false},
      {429, false},
      {500, [%ExWorldCheck.Model.Error{}]}
    ])
  end
end