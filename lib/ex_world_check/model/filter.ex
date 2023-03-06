# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.Filter do
  @moduledoc """
  Filter the response
  """

  @derive [Poison.Encoder]
  defstruct [
    :query,
    :sort,
    :pagination
  ]

  @type t :: %__MODULE__{
          :query => String.t() | nil,
          :sort => [ExWorldCheck.Model.SortCriterion.t()] | nil,
          :pagination => ExWorldCheck.Model.Pagination.t() | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.Filter do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:sort, :list, ExWorldCheck.Model.SortCriterion, options)
    |> deserialize(:pagination, :struct, ExWorldCheck.Model.Pagination, options)
  end
end
