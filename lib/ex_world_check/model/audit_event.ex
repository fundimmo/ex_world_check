# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.AuditEvent do
  @moduledoc """
  Abstract audit event object
  """

  @derive JSON.Encoder
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

  alias ExWorldCheck.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:entityType, :struct, ExWorldCheck.Model.AuditEntityType)
    |> Deserializer.deserialize(:actionType, :struct, ExWorldCheck.Model.AuditEventActionType)
    |> Deserializer.deserialize(:sourceType, :struct, ExWorldCheck.Model.AuditEventSourceType)
    |> Deserializer.deserialize(:details, :struct, ExWorldCheck.Model.AbstractAuditDetails)
  end
end
