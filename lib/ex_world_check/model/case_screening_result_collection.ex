# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.CaseScreeningResultCollection do
  @moduledoc """
  Contains an array of Watchlist Screening Result objects from a synchronous screening operation.
  """

  @derive [Poison.Encoder]
  defstruct [
    :case,
    :results
  ]

  @type t :: %__MODULE__{
          :case => ExWorldCheck.Model.Case.t() | nil,
          :results => [ExWorldCheck.Model.Result.t()] | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.CaseScreeningResultCollection do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:case, :struct, ExWorldCheck.Model.Case, options)
    |> deserialize(:results, :list, ExWorldCheck.Model.Result, options)
  end
end