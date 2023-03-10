# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.CaseBulkStatus do
  @moduledoc """
  Case Bulk Status
  """

  @derive [Poison.Encoder]
  defstruct [
    :caseSystemId,
    :success,
    :errors
  ]

  @type t :: %__MODULE__{
          :caseSystemId => String.t(),
          :success => boolean(),
          :errors => [ExWorldCheck.Model.Error.t()] | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.CaseBulkStatus do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errors, :list, ExWorldCheck.Model.Error, options)
  end
end
