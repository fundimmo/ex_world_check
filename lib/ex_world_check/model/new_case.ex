# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.NewCase do
  @moduledoc """
  Defines Case data that can be sent when creating a new Case. Extends [UpdateCase](#UpdateCase).
  """

  @derive [Poison.Encoder]
  defstruct [
    :caseId,
    :name,
    :providerTypes,
    :customFields,
    :secondaryFields,
    :nameTransposition,
    :note,
    :groupId,
    :entityType
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
          :entityType => String.t()
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.NewCase do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:providerTypes, :list, ExWorldCheck.Model.ProviderType, options)
    |> deserialize(:customFields, :list, ExWorldCheck.Model.Field, options)
    |> deserialize(:secondaryFields, :list, ExWorldCheck.Model.Field, options)
  end
end
