# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ChildCaseAuditDetailsAllOf do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :parentCaseExternalId
  ]

  @type t :: %__MODULE__{
          :parentCaseExternalId => String.t()
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ChildCaseAuditDetailsAllOf do
  def decode(value, _options) do
    value
  end
end
