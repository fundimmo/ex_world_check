# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.MediaCheckRegularFacetRequest do
  @moduledoc """
  Facets for MediaCheckResultsRequest
  """

  @derive JSON.Encoder
  defstruct [
    :limit
  ]

  @type t :: %__MODULE__{
          :limit => integer() | nil
        }

  def decode(value) do
    value
  end
end
