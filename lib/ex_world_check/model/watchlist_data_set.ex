# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.WatchlistDataSet do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :entityCreateOrUpdate,
    :entityDelete,
    :entitySupersede,
    :entityPurge
  ]

  @type t :: %__MODULE__{
          :entityCreateOrUpdate => [ExWorldCheck.Model.Entity.t()] | nil,
          :entityDelete => [ExWorldCheck.Model.EntityDelete.t()] | nil,
          :entitySupersede => [ExWorldCheck.Model.EntitySupersede.t()] | nil,
          :entityPurge => [ExWorldCheck.Model.EntityPurge.t()] | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.WatchlistDataSet do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:entityCreateOrUpdate, :list, ExWorldCheck.Model.Entity, options)
    |> deserialize(:entityDelete, :list, ExWorldCheck.Model.EntityDelete, options)
    |> deserialize(:entitySupersede, :list, ExWorldCheck.Model.EntitySupersede, options)
    |> deserialize(:entityPurge, :list, ExWorldCheck.Model.EntityPurge, options)
  end
end
