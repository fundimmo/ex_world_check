# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ScreeningResultCollection do
  @moduledoc """
  Contains an array of Watchlist Screening Result objects from a synchronous screening operation.
  """

  @derive JSON.Encoder
  defstruct [
    :caseId,
    :name,
    :providerTypes,
    :customFields,
    :secondaryFields,
    :groupId,
    :entityType,
    :caseSystemId,
    :caseScreeningState,
    :lifecycleState,
    :creator,
    :modifier,
    :assignee,
    :creationDate,
    :modificationDate,
    :nameTransposition,
    :outstandingActions,
    :lastScreenedDatesByProviderType,
    :lastIndexDatesByProviderType,
    :providerTypeDetails,
    :results
  ]

  @type t :: %__MODULE__{
          :caseId => String.t() | nil,
          :name => String.t(),
          :providerTypes => [ExWorldCheck.Model.ProviderType.t()],
          :customFields => [ExWorldCheck.Model.Field.t()] | nil,
          :secondaryFields => [ExWorldCheck.Model.Field.t()] | nil,
          :groupId => String.t(),
          :entityType => String.t(),
          :caseSystemId => String.t() | nil,
          :caseScreeningState => %{optional(String.t()) => String.t()} | nil,
          :lifecycleState => String.t() | nil,
          :creator => ExWorldCheck.Model.UserSummary.t() | nil,
          :modifier => ExWorldCheck.Model.UserSummary.t() | nil,
          :assignee => ExWorldCheck.Model.UserSummary.t() | nil,
          :creationDate => DateTime.t() | nil,
          :modificationDate => DateTime.t() | nil,
          :nameTransposition => boolean() | nil,
          :outstandingActions => boolean() | nil,
          :lastScreenedDatesByProviderType => %{optional(String.t()) => DateTime.t()} | nil,
          :lastIndexDatesByProviderType => %{optional(String.t()) => DateTime.t()} | nil,
          :providerTypeDetails => ExWorldCheck.Model.ProviderTypeDetails.t() | nil,
          :results => [ExWorldCheck.Model.Result.t()]
        }

  alias ExWorldCheck.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:providerTypes, :list, ExWorldCheck.Model.ProviderType)
    |> Deserializer.deserialize(:customFields, :list, ExWorldCheck.Model.Field)
    |> Deserializer.deserialize(:secondaryFields, :list, ExWorldCheck.Model.Field)
    |> Deserializer.deserialize(:creator, :struct, ExWorldCheck.Model.UserSummary)
    |> Deserializer.deserialize(:modifier, :struct, ExWorldCheck.Model.UserSummary)
    |> Deserializer.deserialize(:assignee, :struct, ExWorldCheck.Model.UserSummary)
    |> Deserializer.deserialize(
      :providerTypeDetails,
      :struct,
      ExWorldCheck.Model.ProviderTypeDetails
    )
    |> Deserializer.deserialize(:results, :list, ExWorldCheck.Model.Result)
  end
end
