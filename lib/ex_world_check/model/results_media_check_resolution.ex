# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ResultsMediaCheckResolution do
  @moduledoc """
  Response with Media Check results for a case
  """

  @derive [Poison.Encoder]
  defstruct [
    :articleId,
    :errorCodes
  ]

  @type t :: %__MODULE__{
          :articleId => String.t() | nil,
          :errorCodes => [ExWorldCheck.Model.Error.t()] | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ResultsMediaCheckResolution do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorCodes, :list, ExWorldCheck.Model.Error, options)
  end
end