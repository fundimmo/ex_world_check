# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ScreeningRequest do
  @moduledoc """
  Defines Case data that can be sent when creating a synchronous screening request for a new Case. Extends [NewCase](#NewCase).
  """

  @derive JSON.Encoder
  defstruct [
    :caseId,
    :name,
    :providerTypes,
    :customFields,
    :secondaryFields,
    :nameTransposition,
    :note,
    :groupId,
    :entityType,
    :caseScreeningState,
    :startScreeningDate,
    :endScreeningDate
  ]

  @type t :: %__MODULE__{
          :caseId => String.t() | nil,
          :name => String.t(),
          :providerTypes => [ExWorldCheck.Model.ProviderType.t()],
          :customFields => [ExWorldCheck.Model.Field.t()] | nil,
          :secondaryFields => [ExWorldCheck.Model.Field.t()] | nil,
          :nameTransposition => boolean() | nil,
          :note => String.t() | nil,
          :groupId => String.t(),
          :entityType => String.t(),
          :caseScreeningState => %{optional(String.t()) => String.t()} | nil,
          :startScreeningDate => DateTime.t() | nil,
          :endScreeningDate => DateTime.t() | nil
        }

  alias ExWorldCheck.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:providerTypes, :list, ExWorldCheck.Model.ProviderType)
    |> Deserializer.deserialize(:customFields, :list, ExWorldCheck.Model.Field)
    |> Deserializer.deserialize(:secondaryFields, :list, ExWorldCheck.Model.Field)
  end
end
