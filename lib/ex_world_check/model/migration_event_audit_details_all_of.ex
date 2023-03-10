# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.MigrationEventAuditDetailsAllOf do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :caseSystemId,
    :actionLogs
  ]

  @type t :: %__MODULE__{
          :caseSystemId => String.t() | nil,
          :actionLogs => [ExWorldCheck.Model.AbstractMigrationEventPayload.t()] | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.MigrationEventAuditDetailsAllOf do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:actionLogs, :list, ExWorldCheck.Model.AbstractMigrationEventPayload, options)
  end
end
