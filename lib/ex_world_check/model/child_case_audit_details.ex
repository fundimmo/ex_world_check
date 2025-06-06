# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ChildCaseAuditDetails do
  @moduledoc """
  Audit details contain information about the child case. For example, an audit event when an existing child case is merged into a parent. Extends [AbstractAuditDetails](#AbstractAuditDetails). 
  """

  @derive JSON.Encoder
  defstruct [
    :detailsType,
    :parentCaseExternalId
  ]

  @type t :: %__MODULE__{
          :detailsType => String.t(),
          :parentCaseExternalId => String.t()
        }

  def decode(value) do
    value
  end
end
