# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Api.Reference do
  @moduledoc """
  API calls for all endpoints tagged `Reference`.
  """

  alias ExWorldCheck.Connection
  import ExWorldCheck.RequestBuilder

  @doc """
  Get Map of country codes and country names
  Get Map of ISO-3166-1 alpha-3 country codes and country names in English

  ### Parameters

  - `connection` (ExWorldCheck.Connection): Connection to server
  - `authorization` (String.t): The authorization credentials including 'keyId', 'algorithm', 'headers', 'signature' (see 'Security and Authentication details' documentation section for more details)
  - `date` (String.t): The date and time at which the message was originated in 'RFC 1123' format
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, %{}}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_countries(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, %{optional(String.t()) => String.t()}}
          | {:ok, [ExWorldCheck.Model.Error.t()]}
          | {:error, Tesla.Env.t()}
  def get_countries(connection, authorization, date, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/reference/countries")
      |> add_param(:headers, :Authorization, authorization)
      |> add_param(:headers, :Date, date)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {400, ExWorldCheck.Model.Error},
      {401, false},
      {404, ExWorldCheck.Model.Error},
      {415, false},
      {429, false},
      {500, ExWorldCheck.Model.Error}
    ])
  end

  @doc """
  Get Map of nationality codes and nationality names
  Get Map of ISO-3166-1 alpha-3 nationality codes and nationality names in English

  ### Parameters

  - `connection` (ExWorldCheck.Connection): Connection to server
  - `authorization` (String.t): The authorization credentials including 'keyId', 'algorithm', 'headers', 'signature' (see 'Security and Authentication details' documentation section for more details)
  - `date` (String.t): The date and time at which the message was originated in 'RFC 1123' format
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, %{}}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_nationalities(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, %{optional(String.t()) => String.t()}}
          | {:ok, [ExWorldCheck.Model.Error.t()]}
          | {:error, Tesla.Env.t()}
  def get_nationalities(connection, authorization, date, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/reference/nationalities")
      |> add_param(:headers, :Authorization, authorization)
      |> add_param(:headers, :Date, date)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {400, ExWorldCheck.Model.Error},
      {401, false},
      {404, ExWorldCheck.Model.Error},
      {415, false},
      {429, false},
      {500, ExWorldCheck.Model.Error}
    ])
  end

  @doc """
  Get a profile by its ID
  Warning: This endpoint is deprecated due to migration to a new one: `/reference/records/{id}`  Get a profile by its ID.  This service returns a specific subclass of `Entity`, depending on its particular `ProfileEntityType` discriminator field. Please note in the context of World-Check One, \"Profile\" and \"Entity\" are synonymous concepts.  For Zero Footprint Screening (ZFS), this endpoint should be called on the dedicated ZFS gateway host.  The `Entity` subclasses corresponding to each type of entity are:  * `COUNTRY` : `CountryEntity` * `INDIVIDUAL` : `IndividualEntity` * `ORGANISATION` : `OrganisationEntity` * `VESSEL` : `VesselEntity`  The response may contain Special Interest Categories (SIC) records that depends on user subscription type to be able to analyze SIC risk: If a user has subscription type is Premium or Premium Plus, the SIC details are returned for that entity in the \"sources\" field.  The example response body:  ```     {       \"sources\": [         {           \"abbreviation\": \"M:1U5\",           \"creationDate\": \"2020-10-23T07:43:21Z\",           \"identifier\": \"b_trwc_M:1U5\",           \"importIdentifier\": null,           \"name\": \"Sexual Exploitation\",           \"provider\": null,           \"providerSourceStatus\": \"ACTIVE\",           \"regionOfAuthority\": null,           \"subscriptionCategory\": \"STANDARD\",           \"type\": {             \"category\": {               \"description\": \"Description for Special Interest Categories\",               \"identifier\": \"ec_6\",               \"name\": \"Special Interest Categories\",               \"providerSourceTypes\": []             },             \"identifier\": \"t_trwc_14\",             \"name\": \"Special Interest Categories\"           }         }       ]     } ``` 

  ### Parameters

  - `connection` (ExWorldCheck.Connection): Connection to server
  - `authorization` (String.t): The authorization credentials including 'keyId', 'algorithm', 'headers', 'signature' (see 'Security and Authentication details' documentation section for more details)
  - `date` (String.t): The date and time at which the message was originated in 'RFC 1123' format
  - `id` (String.t): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, ExWorldCheck.Model.Entity.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_profile(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, ExWorldCheck.Model.Entity.t()}
          | {:ok, [ExWorldCheck.Model.Error.t()]}
          | {:error, Tesla.Env.t()}
  def get_profile(connection, authorization, date, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/reference/profile/#{id}")
      |> add_param(:headers, :Authorization, authorization)
      |> add_param(:headers, :Date, date)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, ExWorldCheck.Model.Entity},
      {400, ExWorldCheck.Model.Error},
      {401, false},
      {404, ExWorldCheck.Model.Error},
      {415, false},
      {429, false},
      {500, ExWorldCheck.Model.Error}
    ])
  end

  @doc """
  Get a list of available providers and their sources.
  Get a list of all available providers and their sources.

  ### Parameters

  - `connection` (ExWorldCheck.Connection): Connection to server
  - `authorization` (String.t): The authorization credentials including 'keyId', 'algorithm', 'headers', 'signature' (see 'Security and Authentication details' documentation section for more details)
  - `date` (String.t): The date and time at which the message was originated in 'RFC 1123' format
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%ProviderDetail{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_providers(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, [ExWorldCheck.Model.ProviderDetail.t()]}
          | {:ok, [ExWorldCheck.Model.Error.t()]}
          | {:error, Tesla.Env.t()}
  def get_providers(connection, authorization, date, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/reference/providers")
      |> add_param(:headers, :Authorization, authorization)
      |> add_param(:headers, :Date, date)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, ExWorldCheck.Model.ProviderDetail},
      {400, ExWorldCheck.Model.Error},
      {401, false},
      {404, ExWorldCheck.Model.Error},
      {415, false},
      {429, false},
      {500, ExWorldCheck.Model.Error}
    ])
  end

  @doc """
  Get a record by its ID
  Get a record by its ID.  This service returns a specific subclass of 'Entity', depending on its particular 'RecordEntityType' discriminator field. Please note in the context of World-Check One, 'Record' and 'Entity' are synonymous concepts.  For 'Zero Footprint Screening (ZFS)', this endpoint should be called on the dedicated 'ZFS' gateway host.  The 'Entity' subclasses corresponding to each type of entity are:  * 'COUNTRY' : 'CountryEntity' * 'INDIVIDUAL' : 'IndividualEntity' * 'ORGANISATION' : 'OrganisationEntity' * 'VESSEL' : 'VesselEntity'  The response may contain Special Interest Categories (SIC) record that depends on User subscription type to be able to analyze SIC risk: If a User has subscription type is Premium or Premium Plus, the SIC details are returned for that entity in the 'sources' field.  The example response body:  ```     {       \"sources\": [         {           \"abbreviation\": \"M:1U5\",           \"creationDate\": \"2020-10-23T07:43:21Z\",           \"identifier\": \"b_trwc_M:1U5\",           \"importIdentifier\": null,           \"name\": \"Sexual Exploitation\",           \"provider\": null,           \"providerSourceStatus\": \"ACTIVE\",           \"regionOfAuthority\": null,           \"subscriptionCategory\": \"STANDARD\",           \"type\": {             \"category\": {               \"description\": \"Description for Special Interest Categories\",               \"identifier\": \"ec_6\",               \"name\": \"Special Interest Categories\",               \"providerSourceTypes\": []             },             \"identifier\": \"t_trwc_14\",             \"name\": \"Special Interest Categories\"           }         }       ]     } ``` 

  ### Parameters

  - `connection` (ExWorldCheck.Connection): Connection to server
  - `authorization` (String.t): The authorization credentials including 'keyId', 'algorithm', 'headers', 'signature' (see 'Security and Authentication details' documentation section for more details).
  - `date` (String.t): The date and time at which the message was originated in 'RFC 1123' format.
  - `id` (String.t): Record identifier.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, ExWorldCheck.Model.Entity.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_record(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, ExWorldCheck.Model.Entity.t()}
          | {:ok, [ExWorldCheck.Model.Error.t()]}
          | {:error, Tesla.Env.t()}
  def get_record(connection, authorization, date, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/reference/records/#{id}")
      |> add_param(:headers, :Authorization, authorization)
      |> add_param(:headers, :Date, date)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, ExWorldCheck.Model.Entity},
      {400, ExWorldCheck.Model.Error},
      {401, false},
      {404, ExWorldCheck.Model.Error},
      {415, false},
      {429, false},
      {500, ExWorldCheck.Model.Error}
    ])
  end

  @doc """
  Get identity document location types data set definition.
  Get each identity document location type log, that refers to a specific country and entity type.

  ### Parameters

  - `connection` (ExWorldCheck.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%IdentityDocumentLocationTypeDataSet{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec reference_identity_document_location_types_get(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, [ExWorldCheck.Model.IdentityDocumentLocationTypeDataSet.t()]}
          | {:ok, [ExWorldCheck.Model.Error.t()]}
          | {:error, Tesla.Env.t()}
  def reference_identity_document_location_types_get(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/reference/identityDocumentLocationTypes")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, ExWorldCheck.Model.IdentityDocumentLocationTypeDataSet},
      {400, ExWorldCheck.Model.Error},
      {401, false},
      {404, ExWorldCheck.Model.Error},
      {415, false},
      {429, false},
      {500, ExWorldCheck.Model.Error}
    ])
  end

  @doc """
  Retrieves PEP details by the given record ID
  Retrieves detailed information for \"Politically Exposed Person (PEP)\" category by given record ID.

  ### Parameters

  - `connection` (ExWorldCheck.Connection): Connection to server
  - `authorization` (String.t): The authorization credentials including 'keyId', 'algorithm', 'headers', 'signature' (see 'Security and Authentication details' documentation section for more details)
  - `date` (String.t): The date and time at which the message was originated in 'RFC 1123' format
  - `content_type` (String.t): The media type of the request (e.g., 'application/json')
  - `content_length` (integer()): The length of the request body in octets (8-bit bytes)
  - `id` (String.t): Record identifier.
  - `opts` (keyword): Optional parameters
    - `:body` (PepDetailsRequest): Defines the sort order for retrieved PEP roles details.

  ### Returns

  - `{:ok, ExWorldCheck.Model.PepDetailsResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec retrieve_pep_details(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          integer(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, ExWorldCheck.Model.PepDetailsResponse.t()}
          | {:ok, [ExWorldCheck.Model.Error.t()]}
          | {:error, Tesla.Env.t()}
  def retrieve_pep_details(
        connection,
        authorization,
        date,
        content_type,
        content_length,
        id,
        opts \\ []
      ) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/reference/records/#{id}/pep")
      |> add_param(:headers, :Authorization, authorization)
      |> add_param(:headers, :Date, date)
      |> add_param(:headers, :"Content-Type", content_type)
      |> add_param(:headers, :"Content-Length", content_length)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, ExWorldCheck.Model.PepDetailsResponse},
      {400, ExWorldCheck.Model.Error},
      {401, false},
      {404, ExWorldCheck.Model.Error},
      {415, false},
      {429, false},
      {500, ExWorldCheck.Model.Error}
    ])
  end

  @doc """
  Retrieves PEP details by the given profile ID
  Warning: This endpoint is deprecated due to migration to a new one: `/reference/records/{id}/pep`  Retrieves detailed information for \"Politically Exposed Person (PEP)\" category by given profile ID. 

  ### Parameters

  - `connection` (ExWorldCheck.Connection): Connection to server
  - `authorization` (String.t): The authorization credentials including 'keyId', 'algorithm', 'headers', 'signature' (see 'Security and Authentication details' documentation section for more details)
  - `date` (String.t): The date and time at which the message was originated in 'RFC 1123' format
  - `content_type` (String.t): The media type of the request (e.g., 'application/json')
  - `content_length` (integer()): The length of the request body in octets (8-bit bytes)
  - `id` (String.t): Profile identifier.
  - `opts` (keyword): Optional parameters
    - `:body` (PepDetailsRequest): Defines the sort order for retrieved PEP roles details.

  ### Returns

  - `{:ok, ExWorldCheck.Model.PepDetailsResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec retrieve_profile_pep_details(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          integer(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, ExWorldCheck.Model.PepDetailsResponse.t()}
          | {:ok, [ExWorldCheck.Model.Error.t()]}
          | {:error, Tesla.Env.t()}
  def retrieve_profile_pep_details(
        connection,
        authorization,
        date,
        content_type,
        content_length,
        id,
        opts \\ []
      ) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/reference/profile/#{id}/pep")
      |> add_param(:headers, :Authorization, authorization)
      |> add_param(:headers, :Date, date)
      |> add_param(:headers, :"Content-Type", content_type)
      |> add_param(:headers, :"Content-Length", content_length)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, ExWorldCheck.Model.PepDetailsResponse},
      {400, ExWorldCheck.Model.Error},
      {401, false},
      {404, ExWorldCheck.Model.Error},
      {415, false},
      {429, false},
      {500, ExWorldCheck.Model.Error}
    ])
  end
end
