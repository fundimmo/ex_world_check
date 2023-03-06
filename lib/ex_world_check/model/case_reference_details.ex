# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.CaseReferenceDetails do
  @moduledoc """
  Reference representation of a single case that is used for case creation operation. Defines Case data that was saved or not valid. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :caseId,
    :caseSystemId,
    :nameTransposition,
    :caseScreeningState,
    :errors
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :caseId => String.t() | nil,
          :caseSystemId => String.t() | nil,
          :nameTransposition => boolean() | nil,
          :caseScreeningState => %{optional(String.t()) => String.t()} | nil,
          :errors => [ExWorldCheck.Model.Error.t()] | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.CaseReferenceDetails do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errors, :list, ExWorldCheck.Model.Error, options)
  end
end