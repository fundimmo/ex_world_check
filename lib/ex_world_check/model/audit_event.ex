# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.AuditEvent do
  @moduledoc """
  Abstract audit event object
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :objectId,
    :entityType,
    :eventDate,
    :actionType,
    :sourceType,
    :actionedByUserId,
    :actionedByUserName,
    :note,
    :auditEventToDate,
    :details
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :objectId => String.t(),
          :entityType => ExWorldCheck.Model.AuditEntityType.t(),
          :eventDate => DateTime.t(),
          :actionType => ExWorldCheck.Model.AuditEventActionType.t(),
          :sourceType => ExWorldCheck.Model.AuditEventSourceType.t() | nil,
          :actionedByUserId => String.t(),
          :actionedByUserName => String.t(),
          :note => String.t() | nil,
          :auditEventToDate => DateTime.t() | nil,
          :details => ExWorldCheck.Model.AbstractAuditDetails.t()
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.AuditEvent do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:entityType, :struct, ExWorldCheck.Model.AuditEntityType, options)
    |> deserialize(:actionType, :struct, ExWorldCheck.Model.AuditEventActionType, options)
    |> deserialize(:sourceType, :struct, ExWorldCheck.Model.AuditEventSourceType, options)
    |> deserialize(:details, :struct, ExWorldCheck.Model.AbstractAuditDetails, options)
  end
end