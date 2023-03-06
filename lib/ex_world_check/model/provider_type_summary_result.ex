# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ProviderTypeSummaryResult do
  @moduledoc """
  Contains enabled in the case provider types and their aggregated screening results. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :status,
    :totalMatches,
    :reviewRequired,
    :isReviewRequired,
    :unresolved
  ]

  @type t :: %__MODULE__{
          :status => String.t() | nil,
          :totalMatches => integer() | nil,
          :reviewRequired => integer() | nil,
          :isReviewRequired => boolean() | nil,
          :unresolved => integer() | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ProviderTypeSummaryResult do
  def decode(value, _options) do
    value
  end
end
