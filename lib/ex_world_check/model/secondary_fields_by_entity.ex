# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.SecondaryFieldsByEntity do
  @moduledoc """
  Wrapper which contains secondary fields grouped by CaseEntityType.
  """

  @derive [Poison.Encoder]
  defstruct [
    :secondaryFieldsByEntity
  ]

  @type t :: %__MODULE__{
          :secondaryFieldsByEntity => %{
            optional(String.t()) => [ExWorldCheck.Model.FieldDefinition.t()]
          }
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.SecondaryFieldsByEntity do
  def decode(value, _options) do
    value
  end
end
