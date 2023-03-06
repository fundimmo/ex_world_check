# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ChangeCaseScreeningStateAuditDetailsAllOf do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :dateTimeModification,
    :caseScreeningState
  ]

  @type t :: %__MODULE__{
          :dateTimeModification => DateTime.t(),
          :caseScreeningState => ExWorldCheck.Model.CaseScreeningState.t()
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ChangeCaseScreeningStateAuditDetailsAllOf do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:caseScreeningState, :struct, ExWorldCheck.Model.CaseScreeningState, options)
  end
end
