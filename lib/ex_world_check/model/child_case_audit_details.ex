# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ChildCaseAuditDetails do
  @moduledoc """
  Audit details contain information about the child case. For example, an audit event when an existing child case is merged into a parent. Extends [AbstractAuditDetails](#AbstractAuditDetails). 
  """

  @derive [Poison.Encoder]
  defstruct [
    :detailsType,
    :parentCaseExternalId
  ]

  @type t :: %__MODULE__{
          :detailsType => String.t(),
          :parentCaseExternalId => String.t()
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ChildCaseAuditDetails do
  def decode(value, _options) do
    value
  end
end