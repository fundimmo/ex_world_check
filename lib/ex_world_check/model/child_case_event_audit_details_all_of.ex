# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ChildCaseEventAuditDetailsAllOf do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :childCaseExternalId
  ]

  @type t :: %__MODULE__{
          :childCaseExternalId => String.t()
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ChildCaseEventAuditDetailsAllOf do
  def decode(value, _options) do
    value
  end
end
