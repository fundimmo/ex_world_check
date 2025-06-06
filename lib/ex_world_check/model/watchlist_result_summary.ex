# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.WatchlistResultSummary do
  @moduledoc """
  Match summary for results with provider type WATCHLIST
  """

  @derive JSON.Encoder
  defstruct [
    :watchlistTotalMatches,
    :watchlistUnresolved,
    :watchlistReviewRequired,
    :categorisedMatches
  ]

  @type t :: %__MODULE__{
          :watchlistTotalMatches => integer() | nil,
          :watchlistUnresolved => integer() | nil,
          :watchlistReviewRequired => integer() | nil,
          :categorisedMatches =>
            %{optional(String.t()) => %{optional(String.t()) => integer()}} | nil
        }

  def decode(value) do
    value
  end
end
