# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.MediaCheckFacetsRequest do
  @moduledoc """
  Facets for MediaCheckResultsRequest
  """

  @derive [Poison.Encoder]
  defstruct [
    :publicationType,
    :topicPhase,
    :geography,
    :topic,
    :country,
    :publicationDate
  ]

  @type t :: %__MODULE__{
          :publicationType => ExWorldCheck.Model.MediaCheckRegularFacetRequest.t() | nil,
          :topicPhase => ExWorldCheck.Model.MediaCheckRegularFacetRequest.t() | nil,
          :geography => ExWorldCheck.Model.MediaCheckRegularFacetRequest.t() | nil,
          :topic => ExWorldCheck.Model.MediaCheckRegularFacetRequest.t() | nil,
          :country => ExWorldCheck.Model.MediaCheckRegularFacetRequest.t() | nil,
          :publicationDate => map() | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.MediaCheckFacetsRequest do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :publicationType,
      :struct,
      ExWorldCheck.Model.MediaCheckRegularFacetRequest,
      options
    )
    |> deserialize(
      :topicPhase,
      :struct,
      ExWorldCheck.Model.MediaCheckRegularFacetRequest,
      options
    )
    |> deserialize(:geography, :struct, ExWorldCheck.Model.MediaCheckRegularFacetRequest, options)
    |> deserialize(:topic, :struct, ExWorldCheck.Model.MediaCheckRegularFacetRequest, options)
    |> deserialize(:country, :struct, ExWorldCheck.Model.MediaCheckRegularFacetRequest, options)
  end
end
